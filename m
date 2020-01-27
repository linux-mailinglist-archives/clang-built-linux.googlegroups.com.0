Return-Path: <clang-built-linux+bncBC4IDWGOSUGBBT4SXHYQKGQEPKRRISI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 14531149E36
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Jan 2020 03:22:08 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id p5sf974427wmc.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 26 Jan 2020 18:22:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580091727; cv=pass;
        d=google.com; s=arc-20160816;
        b=ig0AxX72JO16nxS04Sx7hU0pe888Gg5O80nOy1btMUZ8ntTmC3FXEpGRfXZW2eUnj9
         /9y1234l7oJqjn+FFfw0tcuxcG0DRRI4scK/KIqt8JZLJkI9FrQiGgZ9Y36k55h80/Ph
         7JvkrS3/pmVfKEu5flm4oR8oTiySKfcbrA5i14IZ907t5Jy4Ly2KrKV3DBk7eGuW2qcp
         5pqtwyBli+7rrxQcJw5inI/6/YZEMOMz68+UHV84IenQqHuQUphswK13W0oGW+uq8RQC
         6kz+xLGlWPWDG+BOMkveq7UUL5HLyR+oDNpG1Cqjj+jm33dpFJ876iQeIMKfcTltcp8g
         jjRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=46Zn+SaoyENaqliod2QqVBsFFaaVkWk4SMQkXNfEWNE=;
        b=ORUzMRQWx6PpAbJQJXYc9SQGjMupdLCVisIVnjqDYQdqiGLludXvjWxDPCwlN/1Bk9
         cFWTQgzYozlXlXgfOY3SDAnPb12CR/e8VI/OevbTsCNf7VAxfwH8vTIpLR2B+ZZyy7EJ
         Uo6667QEr2FruK2g1LLuLtVxyYztt2QHbtMxbosQLq+Y1ejAZlGNB8HXilaMZprQuXWv
         F22qs0USWrJpIh53L0HzL0UWfBD0WCZUEStJYQHxnstLNhbU8xJoXzr2lBC1k8HZOida
         x5sS1qHsM+cogoYjqSqKvbwm1TCSpu6qKYmtr14SBjZdnAmWP2i9MPZQxWck4jQfLMMe
         iKkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ozlGC/HS";
       spf=pass (google.com: domain of bgeffon@google.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=bgeffon@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=46Zn+SaoyENaqliod2QqVBsFFaaVkWk4SMQkXNfEWNE=;
        b=ac1ZbdSBXvnKk26/0xOxt2y4mqlNT+84XOmc8eaIiVKNy6DeZGDNfMSm+q4j/m6jwJ
         fuRY1HIaT4PVB7eLAMabLuWUAbs7lN/lmvTxJsPWcKkBe5QvyCUHTzx3nm9yVR9tJQdi
         dSImQL/Uw+65TUKjS5XPT67Ap0w+/Ql/yQQ/hmGRgQ4KjEWocQYc9F98dBYDAJGPlh/J
         h60c6IHA+/lY0IhlaMWJrZENCl3k9KuZFjKWkxCP55mnyTg471F5LpFk95Z4WX2BNExH
         atv2kZYO91+aUxvO02Dpcr/lIxEgrd3euwpMQAqYOVN3IYfPRhVPWkCcAtCFz1D/CUHQ
         d4hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=46Zn+SaoyENaqliod2QqVBsFFaaVkWk4SMQkXNfEWNE=;
        b=WolNgiTowxHepPissJ1lfQQHgnHonyy1RvRP5ZhvKMowQRpep71Es3zlt5hgJ+lPpc
         ZRPeJ/aLtFL/jm4u8gKgo3/1Tqv+84xmOG3KsER/GfLQ86qY+P/titw+tZ0p8weLmyOc
         D1pcM6pxhh6uw3YOZdh5vVvVmvrRU9Njg8SDpUbv0z7AScONepFRW9nbUjy/2iltGSnJ
         afoqthO95EPWZfFLac4sRihqdW540ghTrE4UDF9yl9FCqZNxNxQfg/xYbn1l+hkk9+q0
         xuB17KjvCQVGj4oe79262YPD4RdWjqlvutli3sU7u8QR7TJThEZuXBXoIl82sLtMHjTH
         0Plg==
X-Gm-Message-State: APjAAAVB/rEPbUWOmTMdJ51YlluycYFHwMPIlpRx1LxaVd161jk/+iEl
	MfDHzQdHrMpRrudoyuabzIM=
X-Google-Smtp-Source: APXvYqxoMyskDxqklO6rtCX4yZkdEaE9RzTxefdlITUOFZF4p790YhJ5QGFB/pQpOCmpG2p140DgUQ==
X-Received: by 2002:a1c:dfd6:: with SMTP id w205mr11518905wmg.151.1580091727709;
        Sun, 26 Jan 2020 18:22:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4fc2:: with SMTP id h2ls5868239wrw.2.gmail; Sun, 26 Jan
 2020 18:22:07 -0800 (PST)
X-Received: by 2002:adf:e3cd:: with SMTP id k13mr18919445wrm.338.1580091727208;
        Sun, 26 Jan 2020 18:22:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580091727; cv=none;
        d=google.com; s=arc-20160816;
        b=mSVzXHuybzZTKaT3ZeWu3ifLdoRWIfjJLiSQAOCBAjM7PtH8AWihmG7AFQ0E9aPR+6
         0WEMJCSQZM0fV6FhWV8KP5+d7O5YMuyfBJ5YBuuZTisYLhlAoA44XZ6S4fWAzrcsSR5d
         322DwuBIIzhwY8TKshKg5CayuPvpSh/6yCRr5kZvO1V2JL1h8dJ5pbAy/UjWBp1sjQML
         acFOWTjKAhBV1inJo8mIO4gDHAcAjMVJJI/aAe+nUzSycli9YVIcxLdBAdYkewgnD5aJ
         zHQx1NDfqjSl846yzXhc/xC6CGWfRCBalp/Jf+qimoXMd9bZ/E0g4ra0Kq0SdPw9qig+
         I2Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PMhK4J394I4THgHDoNXNmbP45YIW934mob295GzVs5g=;
        b=xbsTv96Un2QzFQ5asNqdXyzogx03Wn1AAgcZldrzexcgBPDo4Kh/px7kjfHX/NV2bR
         SKJoZU6/t60w6JPzNnyaanQHf/eW3Bhawwys6bLfR1UaFbUT0PqJFC6ae20QR9gSnqTi
         FJzhlLqBUS93m8IgTb7P/HQtnDWdT0Dmzs4DMt7S9kCjtbxf/6cMa+23od3JtT2GFQpj
         SRMALpLZEoR23Yfaw/4jYLQs6wQNdEpZiDiSVhc/2+t8cRPuHbUKCrUStEt5IAv2ow/6
         mf8eUlAqmBH2sxy8Eydq8Eepfaz/lPyptYxjnzYxtiyXYdkF0pCAKzoRWi/r6C4pNweD
         iq1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="ozlGC/HS";
       spf=pass (google.com: domain of bgeffon@google.com designates 2a00:1450:4864:20::542 as permitted sender) smtp.mailfrom=bgeffon@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com. [2a00:1450:4864:20::542])
        by gmr-mx.google.com with ESMTPS id p23si286700wma.1.2020.01.26.18.22.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jan 2020 18:22:07 -0800 (PST)
Received-SPF: pass (google.com: domain of bgeffon@google.com designates 2a00:1450:4864:20::542 as permitted sender) client-ip=2a00:1450:4864:20::542;
Received: by mail-ed1-x542.google.com with SMTP id p23so479561edr.5
        for <clang-built-linux@googlegroups.com>; Sun, 26 Jan 2020 18:22:07 -0800 (PST)
X-Received: by 2002:a17:906:b208:: with SMTP id p8mr11966398ejz.191.1580091726432;
 Sun, 26 Jan 2020 18:22:06 -0800 (PST)
MIME-Version: 1.0
References: <20200123014627.71720-1-bgeffon@google.com> <20200124190625.257659-1-bgeffon@google.com>
 <20200126051642.GA39508@ubuntu-x2-xlarge-x86>
In-Reply-To: <20200126051642.GA39508@ubuntu-x2-xlarge-x86>
From: "'Brian Geffon' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 26 Jan 2020 18:21:39 -0800
Message-ID: <CADyq12wfLfnbRFt3nRjwc=3BcTi8BbUatyxc58r592NLbD04pQ@mail.gmail.com>
Subject: Re: [PATCH v2] mm: Add MREMAP_DONTUNMAP to mremap().
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, "Michael S . Tsirkin" <mst@redhat.com>, 
	Arnd Bergmann <arnd@arndb.de>, LKML <linux-kernel@vger.kernel.org>, 
	linux-mm <linux-mm@kvack.org>, linux-api@vger.kernel.org, 
	Andy Lutomirski <luto@amacapital.net>, Andrea Arcangeli <aarcange@redhat.com>, 
	Sonny Rao <sonnyrao@google.com>, Minchan Kim <minchan@kernel.org>, 
	Joel Fernandes <joel@joelfernandes.org>, Yu Zhao <yuzhao@google.com>, 
	Jesse Barnes <jsbarnes@google.com>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: bgeffon@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="ozlGC/HS";       spf=pass
 (google.com: domain of bgeffon@google.com designates 2a00:1450:4864:20::542
 as permitted sender) smtp.mailfrom=bgeffon@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Brian Geffon <bgeffon@google.com>
Reply-To: Brian Geffon <bgeffon@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

Hi Nathan,
Thank you! That was an oversight on my part. I'll address it in the next patch.

Brian


On Sat, Jan 25, 2020 at 9:16 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi Brian,
>
> On Fri, Jan 24, 2020 at 11:06:25AM -0800, Brian Geffon wrote:
> > When remapping an anonymous, private mapping, if MREMAP_DONTUNMAP is
> > set, the source mapping will not be removed. Instead it will be
> > cleared as if a brand new anonymous, private mapping had been created
> > atomically as part of the mremap() call.  If a userfaultfd was watching
> > the source, it will continue to watch the new mapping.  For a mapping
> > that is shared or not anonymous, MREMAP_DONTUNMAP will cause the
> > mremap() call to fail. MREMAP_DONTUNMAP implies that MREMAP_FIXED is
> > also used. The final result is two equally sized VMAs where the
> > destination contains the PTEs of the source.
> >
> > We hope to use this in Chrome OS where with userfaultfd we could write
> > an anonymous mapping to disk without having to STOP the process or worry
> > about VMA permission changes.
> >
> > This feature also has a use case in Android, Lokesh Gidra has said
> > that "As part of using userfaultfd for GC, We'll have to move the physical
> > pages of the java heap to a separate location. For this purpose mremap
> > will be used. Without the MREMAP_DONTUNMAP flag, when I mremap the java
> > heap, its virtual mapping will be removed as well. Therefore, we'll
> > require performing mmap immediately after. This is not only time consuming
> > but also opens a time window where a native thread may call mmap and
> > reserve the java heap's address range for its own usage. This flag
> > solves the problem."
> >
> > Signed-off-by: Brian Geffon <bgeffon@google.com>
> > ---
> >  include/uapi/linux/mman.h |  5 +++--
> >  mm/mremap.c               | 37 ++++++++++++++++++++++++++++++-------
> >  2 files changed, 33 insertions(+), 9 deletions(-)
> >
> > diff --git a/include/uapi/linux/mman.h b/include/uapi/linux/mman.h
> > index fc1a64c3447b..923cc162609c 100644
> > --- a/include/uapi/linux/mman.h
> > +++ b/include/uapi/linux/mman.h
> > @@ -5,8 +5,9 @@
> >  #include <asm/mman.h>
> >  #include <asm-generic/hugetlb_encode.h>
> >
> > -#define MREMAP_MAYMOVE       1
> > -#define MREMAP_FIXED 2
> > +#define MREMAP_MAYMOVE               1
> > +#define MREMAP_FIXED         2
> > +#define MREMAP_DONTUNMAP     4
> >
> >  #define OVERCOMMIT_GUESS             0
> >  #define OVERCOMMIT_ALWAYS            1
> > diff --git a/mm/mremap.c b/mm/mremap.c
> > index 122938dcec15..bf97c3eb538b 100644
> > --- a/mm/mremap.c
> > +++ b/mm/mremap.c
> > @@ -318,8 +318,8 @@ unsigned long move_page_tables(struct vm_area_struct *vma,
> >  static unsigned long move_vma(struct vm_area_struct *vma,
> >               unsigned long old_addr, unsigned long old_len,
> >               unsigned long new_len, unsigned long new_addr,
> > -             bool *locked, struct vm_userfaultfd_ctx *uf,
> > -             struct list_head *uf_unmap)
> > +             bool *locked, unsigned long flags,
> > +             struct vm_userfaultfd_ctx *uf, struct list_head *uf_unmap)
> >  {
> >       struct mm_struct *mm = vma->vm_mm;
> >       struct vm_area_struct *new_vma;
> > @@ -408,6 +408,13 @@ static unsigned long move_vma(struct vm_area_struct *vma,
> >       if (unlikely(vma->vm_flags & VM_PFNMAP))
> >               untrack_pfn_moved(vma);
> >
> > +     if (unlikely(!err && (flags & MREMAP_DONTUNMAP))) {
> > +             if (vm_flags & VM_ACCOUNT)
> > +                     vma->vm_flags |= VM_ACCOUNT;
> > +
> > +             goto out;
> > +     }
> > +
> >       if (do_munmap(mm, old_addr, old_len, uf_unmap) < 0) {
> >               /* OOM: unable to split vma, just get accounts right */
> >               vm_unacct_memory(excess >> PAGE_SHIFT);
> > @@ -422,6 +429,7 @@ static unsigned long move_vma(struct vm_area_struct *vma,
> >                       vma->vm_next->vm_flags |= VM_ACCOUNT;
> >       }
> >
> > +out:
> >       if (vm_flags & VM_LOCKED) {
> >               mm->locked_vm += new_len >> PAGE_SHIFT;
> >               *locked = true;
> > @@ -497,7 +505,7 @@ static struct vm_area_struct *vma_to_resize(unsigned long addr,
> >
> >  static unsigned long mremap_to(unsigned long addr, unsigned long old_len,
> >               unsigned long new_addr, unsigned long new_len, bool *locked,
> > -             struct vm_userfaultfd_ctx *uf,
> > +             unsigned long flags, struct vm_userfaultfd_ctx *uf,
> >               struct list_head *uf_unmap_early,
> >               struct list_head *uf_unmap)
> >  {
> > @@ -545,6 +553,17 @@ static unsigned long mremap_to(unsigned long addr, unsigned long old_len,
> >               old_len = new_len;
> >       }
> >
> > +     /*
> > +      * MREMAP_DONTUNMAP expands by old_len + (new_len - old_len), we will
> > +      * check that we can expand by old_len and vma_to_resize will handle
> > +      * the vma growing.
> > +      */
> > +     if (unlikely(flags & MREMAP_DONTUNMAP && !may_expand_vm(mm,
> > +                             vma->vm_flags, old_len >> PAGE_SHIFT))) {
>
> We received a Clang build report that vma is used uninitialized here
> (they aren't being publicly sent to LKML due to GCC vs Clang
> warning/error overlap):
>
> https://groups.google.com/d/msg/clang-built-linux/gE5wRaeHdSI/xVA0MBQVEgAJ
>
> Sure enough, vma is initialized first in the next block. Not sure if
> this section should be moved below that initialization or if something
> else should be done to resolve it but that dereference will obviously be
> fatal.
>
> Cheers,
> Nathan
>
> > +             ret = -ENOMEM;
> > +             goto out;
> > +     }
> > +
> >       vma = vma_to_resize(addr, old_len, new_len, &charged);
> >       if (IS_ERR(vma)) {
> >               ret = PTR_ERR(vma);
> > @@ -561,7 +580,7 @@ static unsigned long mremap_to(unsigned long addr, unsigned long old_len,
> >       if (IS_ERR_VALUE(ret))
> >               goto out1;
> >
> > -     ret = move_vma(vma, addr, old_len, new_len, new_addr, locked, uf,
> > +     ret = move_vma(vma, addr, old_len, new_len, new_addr, locked, flags, uf,
> >                      uf_unmap);
> >       if (!(offset_in_page(ret)))
> >               goto out;
> > @@ -609,12 +628,15 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
> >       addr = untagged_addr(addr);
> >       new_addr = untagged_addr(new_addr);
> >
> > -     if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE))
> > +     if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE | MREMAP_DONTUNMAP))
> >               return ret;
> >
> >       if (flags & MREMAP_FIXED && !(flags & MREMAP_MAYMOVE))
> >               return ret;
> >
> > +     if (flags & MREMAP_DONTUNMAP && !(flags & MREMAP_FIXED))
> > +             return ret;
> > +
> >       if (offset_in_page(addr))
> >               return ret;
> >
> > @@ -634,7 +656,8 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
> >
> >       if (flags & MREMAP_FIXED) {
> >               ret = mremap_to(addr, old_len, new_addr, new_len,
> > -                             &locked, &uf, &uf_unmap_early, &uf_unmap);
> > +                             &locked, flags, &uf, &uf_unmap_early,
> > +                             &uf_unmap);
> >               goto out;
> >       }
> >
> > @@ -712,7 +735,7 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
> >               }
> >
> >               ret = move_vma(vma, addr, old_len, new_len, new_addr,
> > -                            &locked, &uf, &uf_unmap);
> > +                            &locked, flags, &uf, &uf_unmap);
> >       }
> >  out:
> >       if (offset_in_page(ret)) {
> > --
> > 2.25.0.341.g760bfbb309-goog
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADyq12wfLfnbRFt3nRjwc%3D3BcTi8BbUatyxc58r592NLbD04pQ%40mail.gmail.com.
