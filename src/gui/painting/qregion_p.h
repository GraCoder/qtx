#pragma once

struct QRegionPrivate {
    int numRects;
    QVector<QRect> rects;
    QRect extents;
    QRect innerRect;
    int innerArea;

    inline QRegionPrivate() : numRects(0), innerArea(-1) {}
    inline QRegionPrivate(const QRect &r) {
        numRects = 1;
        extents = r;
        innerRect = r;
        innerArea = r.width() * r.height();
    }

    inline QRegionPrivate(const QRegionPrivate &r) {
        rects = r.rects;
        numRects = r.numRects;
        extents = r.extents;
        innerRect = r.innerRect;
        innerArea = r.innerArea;
    }

    inline QRegionPrivate &operator=(const QRegionPrivate &r) {
        rects = r.rects;
        numRects = r.numRects;
        extents = r.extents;
        innerRect = r.innerRect;
        innerArea = r.innerArea;
        return *this;
    }

    void intersect(const QRect &r);

    /*
     * Returns true if r is guaranteed to be fully contained in this region.
     * A false return value does not guarantee the opposite.
     */
    inline bool contains(const QRegionPrivate &r) const {
        return contains(r.extents);
    }

    inline bool contains(const QRect &r2) const {
        const QRect &r1 = innerRect;
        return r2.left() >= r1.left() && r2.right() <= r1.right()
            && r2.top() >= r1.top() && r2.bottom() <= r1.bottom();
    }

    /*
     * Returns true if this region is guaranteed to be fully contained in r.
     */
    inline bool within(const QRect &r1) const {
        const QRect &r2 = extents;
        return r2.left() >= r1.left() && r2.right() <= r1.right()
            && r2.top() >= r1.top() && r2.bottom() <= r1.bottom();
    }

    inline void updateInnerRect(const QRect &rect) {
        const int area = rect.width() * rect.height();
        if (area > innerArea) {
            innerArea = area;
            innerRect = rect;
        }
    }

    inline void vectorize() {
        if (numRects == 1) {
            if (!rects.size())
                rects.resize(1);
            rects[0] = extents;
        }
    }

    inline void append(const QRect *r);
    void append(const QRegionPrivate *r);
    void prepend(const QRect *r);
    void prepend(const QRegionPrivate *r);
    inline bool canAppend(const QRect *r) const;
    inline bool canAppend(const QRegionPrivate *r) const;
    inline bool canPrepend(const QRect *r) const;
    inline bool canPrepend(const QRegionPrivate *r) const;

    inline bool mergeFromRight(QRect *left, const QRect *right);
    inline bool mergeFromLeft(QRect *left, const QRect *right);
    inline bool mergeFromBelow(QRect *top, const QRect *bottom,
                               const QRect *nextToTop,
                               const QRect *nextToBottom);
    inline bool mergeFromAbove(QRect *bottom, const QRect *top,
                               const QRect *nextToBottom,
                               const QRect *nextToTop);

#ifdef QT_REGION_DEBUG
    void selfTest() const;
#endif
};
