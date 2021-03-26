Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB65Y66BAMGQEVQ7D5ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9196D34A7CC
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 14:07:08 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id t23sf4579168oou.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Mar 2021 06:07:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616764027; cv=pass;
        d=google.com; s=arc-20160816;
        b=gF8n/cNbRLSC/MtuepIwj+eZYGW+589FrGkCT2p0XWUreOMq1GLYukHhkHkIQmNhVg
         +3r5kqb+dAxud6pqjE7XkT4PD6LRN6UxzJLRlqK2lLJp80DnlCHg7VmdvpWIjcArL6AY
         rHi9cIOWtbZBdJLdO8lIpyWRlAQvZyByZLyNQCx/FsHvB2XoqcsYy1XBv1/mgHFL5pr/
         H6K7nG5eu/XKZv27GYFvYJriqgH56J/Df3G8Ho+b2haX/doXgu9QdFw4orBv5CiSq7kh
         j3qFhlN3oQd+5lwrXaf2Mtz7dhHfe97vQ4QoJ9cOW6CLjbD/Fm7EN89R/sxHhZzOL+Ov
         JXzw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=fFtcEp1/RpaL8zXFh8wInwcrdowM7kgtBPghIqY/ty4=;
        b=GOe2e32iavbTXuNHLkKmjL2UntL6TTIDe5qeiaJDHY9vpXO1TFaamBAmGOLv4VLGJb
         XSGQiJGtbVlERZGh5vQ0e6RTFGEjSXrwTqfEkdJt3ihv4DpFb4E/nXdl7dy4fs7mUP35
         3i9bvE/QEgz1WD/wKPgZ3bmr6zCD36Y4fjOrDmNMoI51Lk+gW4wXVMbPXdz+IIMJXyOj
         R2GEzNWWEqe7IY3eBsMqupsq7PvbwRMlSNs07JSoHmn/bGJPddpQHxevXKoUmLQSTm1u
         6o1s1RmpIeguLmGdqt7KnJjgYg03PwNvmt6rUcUpYnJ2gdJu6ZdourIQaBpNrqOSA6Cd
         WX7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="a2/avi/D";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fFtcEp1/RpaL8zXFh8wInwcrdowM7kgtBPghIqY/ty4=;
        b=ZesuESgGZgPH1KIu1SKQce7XOmW9Fy6HseqjeRJo/ZlbayQ9dRA9AIf8jIsEO7cx1m
         0gxOdwLbnVqRKBG2VshRRU7H7KNEetL8HI+cAQcg3IWxop66jLfFmXEQ7pxf/Vw5bosQ
         FbEFF+Q7LpRkLsjCEv2v2GMnOcHrEH9k43MPPbn9c5Os8JEgUeNiKRMRSvNRhG09UIgM
         tFvUZI65clwpfWhB9NOeh9/Bzh7zsFTqo/NERhLaXLq9WjcPOWucwpv+G8+Mssnj5Uu6
         1PgOOPJ8S33f9G1VyZkzuS6GudswAADdoGA+0D6VvuXBbVXUMl/5+a+93W3OILsmrNYm
         QH+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fFtcEp1/RpaL8zXFh8wInwcrdowM7kgtBPghIqY/ty4=;
        b=K3lrBD0FqQAStra41qFttQOeaDeFtPrAFs7GwjcOO73m2GK5Ewd/zg8/vdyx7Elf3k
         Xrw9eBYnwNVdZICEx8RJesHlv8XxNMCI96hgxU1NXQjTh1lLpDGtkgl6nLMi57z65O9s
         0X4EwDnK8j8IRB1W1y0RHY688AfTW7lNR0YxtDUPORfLWP7xZqwC4SlamDlsYcFhmKYP
         T1fzIZcNNvwsMURCTWC7eErAMRwwQepIl+Ium8CD+cI+IHx76oROqxB+x46hYuEpNZlK
         YA7mxHf/MoI+sNMzNP8omF7aF+LfHF/ahTW1b5N6+9+QSWV9AeqYP3i06rkOysEqsyk2
         XKAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I48dM/eq+xsl+PrR9Ks7sbwp9XkVDrgwxawmq+klPfgAT4DoS
	/WbkIbQUgASwH4cGOq4bNoI=
X-Google-Smtp-Source: ABdhPJy7jxBhJ/KBE+5qLpD1HL6+tIKQZU0BNDeM7+tHTznZdau7+fg4Vgz8NLvWnskGqRfPjcSWCw==
X-Received: by 2002:a4a:9843:: with SMTP id z3mr11155777ooi.51.1616764027316;
        Fri, 26 Mar 2021 06:07:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:12f2:: with SMTP id g105ls2407665otg.6.gmail; Fri, 26
 Mar 2021 06:07:07 -0700 (PDT)
X-Received: by 2002:a05:6830:22f4:: with SMTP id t20mr11977595otc.45.1616764026974;
        Fri, 26 Mar 2021 06:07:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616764026; cv=none;
        d=google.com; s=arc-20160816;
        b=s+62rfKF9Es/osNx8t2lJYEidoS+iSFjBPLLS7pf6PwLPTakqXBk3Pu7+0jb89ffVe
         21YOS/iDmTGM19UScd95dd6/18gtXwZkwx0g+zHoDDDe4iM9DrFpPhGzZ6gcvOgpdyjj
         KrzP+8K2zoxVkLqmZc+oFBaWtreQiT2Q9bX6H9jyMzYDMNN5WADH1RPYy7spordm2sDX
         mPKKQS7YrOh3C1luMofnP6zr1m4ZwIs+Us5+sFlAAc/NR1xccIz1X269Crn6PaX9dDua
         /vHTXXpOgPSUErTgdEgo8Oubi9Qujk7C9vaY4629BH0yBQl6kH4ixiWAmQAgJ22Zj/1m
         E4FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qOJwX1VzcdbENmpGaf+vT43tcuzvgpykl/gzTwQdwJM=;
        b=RN0UlCyw42mMuy62E5EDPrRUiyQTCcj0CwOajBQxd28ePejEasz4ZThW1b9QDNri9j
         10PL+U3PXYExRyIgJ1iU2kX5SJxnm/YHdlhsedInjF4MXb6dQVzNv+Wf5tXpcSo/5nvv
         PjtJa/FovE2QxfAjKkS+DQ+sPme5r5wELVCIPxf/gKyDHEpO88hWqhyqljdZ8wiDPxiy
         bmKn1sTEhy/6qsFDFCPy/qAldWmyxcPzff9s9cZrqUjq3wD0I+Lmk89VgHIF9k7bYIy1
         rUqwWMVrHYiA7Y+ujcQq4MGkbUtKOb8B605IBjWyk89BLsvUlvpaaZHmwfbwrtpKnLq1
         kmTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="a2/avi/D";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h5si713449otk.1.2021.03.26.06.07.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Mar 2021 06:07:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5D771619FE;
	Fri, 26 Mar 2021 13:07:05 +0000 (UTC)
Date: Fri, 26 Mar 2021 06:07:02 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 0/3] Fix CONFIG_FUNCTION_TRACER with clang
Message-ID: <20210326130702.3yaz2vqwejnfnlq4@MSI.localdomain>
References: <20210325223807.2423265-1-nathan@kernel.org>
 <CA+icZUWgxmrtM=oj-aJi1KXxZx0YUZDiUPK42MjHvqS96aazYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUWgxmrtM=oj-aJi1KXxZx0YUZDiUPK42MjHvqS96aazYQ@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="a2/avi/D";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Mar 26, 2021 at 09:37:55AM +0100, Sedat Dilek wrote:
> On Thu, Mar 25, 2021 at 11:38 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > Hi all,
> >
> > This series fixes function tracing with clang.
> >
> > Patch 1 adjusts the mcount regex in scripts/recordmcount.pl to handle
> > the presence of PLT relocations, which happen with clang. Without this,
> > the mcount_loc section will not be created properly.
> >
> > Patch 2 adds a workaround for clang less than 13.0.0 in relation to the
> > mcount symbol name, which was "mcount" rather than "_mcount". This was
> > written as a separate patch so that it can be reverted when the minimum
> > clang version is bumped to clang 13.0.0.
> >
> > Patch 3 avoids a build error when -fpatchable-function-entry is not
> > available, which is the case with clang less than 13.0.0. This will make
> > dynamic ftrace unavailable but all of the other function tracing should
> > work due to the prescence of the previous patch.
> >
> > I am hoping this series can go in as fixes for 5.12, due to patch 3, but
> > if not, they can always be backported (patches 1 and 2 are already
> > marked for stable).
> >
> > This series has been build tested with gcc-8 through gcc-10 and clang-11
> > through clang-13 with defconfig and nommu_virt_defconfig plus
> > CONFIG_FTRACE=y and CONFIG_FUNCTION_TRACER=y then boot tested under
> > QEMU.
> >
> > Cheers,
> > Nathan
> >
> > Nathan Chancellor (3):
> >   scripts/recordmcount.pl: Fix RISC-V regex for clang
> >   riscv: Workaround mcount name prior to clang-13
> >   riscv: Select HAVE_DYNAMIC_FTRACE when -fpatchable-function-entry is
> >     available
> >
> 
> Does this only fixes stuff for clang + riscv?

Yes.

> If so, please put a label "riscv" also in the cover-letter.

Sure, my apologies for not doing that in the first place, I must have
been in a rush with the cover letter.

In my defense, I think the titles of my commit messages and the diffstat
below make that obvious without the tag :)

Cheers,
Nathan

> - Sedat -
> 
> >  arch/riscv/Kconfig              |  2 +-
> >  arch/riscv/include/asm/ftrace.h | 14 ++++++++++++--
> >  arch/riscv/kernel/mcount.S      | 10 +++++-----
> >  scripts/recordmcount.pl         |  2 +-
> >  4 files changed, 19 insertions(+), 9 deletions(-)
> >
> > --
> > 2.31.0
> >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210326130702.3yaz2vqwejnfnlq4%40MSI.localdomain.
