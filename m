Return-Path: <clang-built-linux+bncBD7YZQWS6IOBB4VG5KCAMGQEA3KO3CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 184B637A908
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 16:23:48 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id a18-20020a0cca920000b02901d3c6996bb7sf15632779qvk.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 07:23:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620743027; cv=pass;
        d=google.com; s=arc-20160816;
        b=mGpYvx+ntfY2JUEUJgzfOmxenZhV/ROsuQkTLT15Ofjy7kogMEjm39Tq24CBRAiRM5
         zCOlvpNgb8Wu0LrQmnMHL1Uz3SU+zg2zNUtFls/3ZKiM5IgYg4yO2oAgfHJmB9WL8TZk
         pFGzRPUd9vzjNC2ffj9IE5ePxHRIqzvgB/YD9tVLmZycf5/FRfTkXt5DOsXxILWxflYT
         2OnwH65vSFfxu9twE8KXVKce+r9aJuiUyfuVSU1oFrRFgPv9+D9BG31vzJ2S2/nD5gtW
         Wjt9nRQORPnr0M7vpA5ThaulV6FhGq6zCg7EN79pZIrpDuRhLkx6vPF/OXAN4v8WVLkq
         /GBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=cMtYO7OfApgXRUjdjtT20YUuFX6Ln2rMsWO1oSqAs0Y=;
        b=QyFudZlLHPdGxfYmt3x01CX7ygmRFDy0+2hx2zjub8CTHPX2gsTuXMoS0fY8QuPQyX
         c0QcHmAXv/EYAqGHHPPPzFsBUd/ZLXUdgKd7fwnrjmtDK58VVP1kHZJZuBCt4pUTAtYx
         E7idBSuD6zY69ErX/5kgyPMC467kR3cAtiLou48uNUBaaI7rVNx+R/xYnzPhD8Dx8e3J
         VGLHMgYwStfc9nEM9IPAhThGsE0wUGwms6lWqKZH0S+T23cTwJKzTSkUdBZFFCCKb3qy
         yskoMi6Z6t1mQIleVm9DtFLa7oNwTS5m/+1oFaPyWZl5g4x3rcuR38Gh02RMxInVdFR9
         yAlQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ibQKz4jl;
       spf=pass (google.com: domain of peterx@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cMtYO7OfApgXRUjdjtT20YUuFX6Ln2rMsWO1oSqAs0Y=;
        b=ORWBPDByyeU/XsL1Yjv5tc16+eOfeTq0qA2tB4VS1lsQWhw5Ln+YCnFk2AVQbvOh7Z
         Y0XArnEplBaSExGGqZgEELKmfGPZTpKXExA1F18uP5KT+fWhR8Xv0XBZdRyP6xbJ6MrP
         vAP8VdIubpLEyzCvahXzSyvTwGDepPmBTvRhgZHps5mipLwZmkQKoXb8nko65t4qLp5l
         CtwQRG2BtRDl8OjXYyP3sJLjb0nMEHaw1pZ1UCDIRTPXBglZPbeBnRIZkIflTUkQdp5k
         1BHC3O5bD2whSlKL6Z0BpACu7W/IjjVzxfTvtujMTRc2DU7rrX+3c61+YFcYELtfU+p9
         0wZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cMtYO7OfApgXRUjdjtT20YUuFX6Ln2rMsWO1oSqAs0Y=;
        b=kVbRYWcczdW+9aXkYCSBNJf3OVCMl5cj7sKGTwsEUavmDxH2qYscs20d82qQ8pdSwk
         8ZK88sOAAr+e9jRLZHi28GatpFhoFP1L5MuCrEKTmFZzRkqxHxLuh2LdPe0cRloEz6qd
         gfg1btxmVAhnrV7u4uFufdv47mjnL6rzBekZApFeDj57EIe260iyoYWyNQUU9SHZfeMD
         EO8RBV5wBMb7twXMDQZXwCLRsjX9Yy4GYxDoLwkF/nDeifXXUbi1y/XYDjOjT5j1+Xn6
         9S/jFPXGdOsVWivosx1IaK7Ehz/j+pjnNtJtKatLVZjoVMlNz2/gnyjZPMjepr42cnz2
         nvAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533V7yeXxOxwC3FgGL2aFsWtsUoy/ZegzKqEfX08JxtAJNF6mo+5
	NQTBHvFoCTnG+hXanqLeDZc=
X-Google-Smtp-Source: ABdhPJxxoWueD9NfUvNptAzUuWjUfsBAkOYnLU12YVZXAb9Bf+P16i2xlTfY9mBerbjpi/Z3ncmzcg==
X-Received: by 2002:a37:7c83:: with SMTP id x125mr30159116qkc.222.1620743027066;
        Tue, 11 May 2021 07:23:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:ad0d:: with SMTP id f13ls3801433qkm.1.gmail; Tue, 11 May
 2021 07:23:46 -0700 (PDT)
X-Received: by 2002:a37:9a16:: with SMTP id c22mr28047981qke.0.1620743026602;
        Tue, 11 May 2021 07:23:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620743026; cv=none;
        d=google.com; s=arc-20160816;
        b=KLgxZnTl1880CMj91GEBMiOPDVkljP5f6ThRQh2R/d2zjeKfdlqqtbsrSdMMJF+lcs
         HXEG1VOQ84S2lQEY44dtRWOKzq4cdmL5zEF2RCsYXNBt6CqtVwhpFoYHAa0vbIvxTuIl
         IoQLsK2ghsApCr3Hgu3lYCaR37W2AwmYTFCpk0lpBy/hNtxZf10A1DLJy6MbPl/BlHWo
         4tOF/fU9hATuybxlcreOnVMxqDH79VmpG6IS2EaXe0np7HXBwpbliaNoGtFEoDmBUZvi
         HUGOJwlYu3scKYse2vxgThbhJ4Zzpx6u803o+LeZo7/I12hOaBLiZLmlG7PPlYnmePtf
         jRWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:in-reply-to:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Rn+qhYGO4dgkoxtSrEePX3pR2psF1vkSxQu10f/Ovh8=;
        b=aqw+5iDULOKaqVrSlYHas1PKTmrsVh8lMayYv0CB/dvoXxMTslx85vh1vk3gaf6FZ7
         VpBWkRS5n6zsn6/Ci7ZLuC4SspibXrOevaz0hEQUabGpjIw2JZTpSMyMxYuV4nebnGbW
         fVyfA7WIJtgcsxgFSNDuq+JLqw4rgkHHL+C+e9gDlUtrqLWuV2ThWiAx0fKtAecoB9J7
         qJGtbzRQ/OV6ZJ3Pef4H4m4yTKQpw07ijD7jp6s6AccX9yKPP6WnBPqxK+QXKTu5Mpbk
         eL9C2Q5lR1dhz0lIcpe6ia7xusdAOULCz0B0JSYM9juqrw6WNqieukzlUizaafyPZwHi
         t3lQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ibQKz4jl;
       spf=pass (google.com: domain of peterx@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id t65si1885938qke.7.2021.05.11.07.23.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 07:23:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of peterx@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-229-6zJOCN7pOgafRKD792mX2A-1; Tue, 11 May 2021 10:23:44 -0400
X-MC-Unique: 6zJOCN7pOgafRKD792mX2A-1
Received: by mail-qv1-f72.google.com with SMTP id f20-20020a0caa940000b02901c5058e5813so15637246qvb.23
        for <clang-built-linux@googlegroups.com>; Tue, 11 May 2021 07:23:43 -0700 (PDT)
X-Received: by 2002:a37:7e41:: with SMTP id z62mr28124359qkc.282.1620743022077;
        Tue, 11 May 2021 07:23:42 -0700 (PDT)
X-Received: by 2002:a37:7e41:: with SMTP id z62mr28124330qkc.282.1620743021758;
        Tue, 11 May 2021 07:23:41 -0700 (PDT)
Received: from t490s (bras-base-toroon474qw-grc-72-184-145-4-219.dsl.bell.ca. [184.145.4.219])
        by smtp.gmail.com with ESMTPSA id y12sm12464772qkf.5.2021.05.11.07.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 07:23:41 -0700 (PDT)
Date: Tue, 11 May 2021 10:23:39 -0400
From: Peter Xu <peterx@redhat.com>
To: Andrea Arcangeli <aarcange@redhat.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [aa:mapcount_deshare 20/27] mm/gup.c:2756:3: error: implicit
 declaration of function 'mm_set_has_pinned_flag'
Message-ID: <YJqTa+FXy2g/kvEU@t490s>
References: <202105111829.jGDViOAc-lkp@intel.com>
 <YJp5G5gdySlpVHwV@redhat.com>
MIME-Version: 1.0
In-Reply-To: <YJp5G5gdySlpVHwV@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: peterx@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ibQKz4jl;
       spf=pass (google.com: domain of peterx@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=peterx@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, May 11, 2021 at 08:31:23AM -0400, Andrea Arcangeli wrote:
> Hello,
> 
> thanks to the report.
> 
> Peter, this isn't immediately clear to me, is it perhaps something
> related to clang?
> 
> This is commit 8dec302e87453234fc7ac1cf4d09e4d577a06cf3

Andrea,

I guess it's probably a NOMMU arm config so the helper got opted out as I
errornously put it into a CONFIG_MMU block without noticing..

So we may need to squash below into that commit.

I really should think of something to avoid such errors in the future, as this
is the 2nd time happening at least this year..  Probably I should always start
adding helpers at the beginning of files so I won't overlook any macros..

Thanks,

----8<----
diff --git a/mm/gup.c b/mm/gup.c
index bb130723a6717..0223644d0c61a 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -392,6 +392,17 @@ void unpin_user_pages(struct page **pages, unsigned long npages)
 }
 EXPORT_SYMBOL(unpin_user_pages);
 
+/*
+ * Set the MMF_HAS_PINNED if not set yet; after set it'll be there for the mm's
+ * lifecycle.  Avoid setting the bit unless necessary, or it might cause write
+ * cache bouncing on large SMP machines for concurrent pinned gups.
+ */
+static inline void mm_set_has_pinned_flag(unsigned long *mm_flags)
+{
+       if (!test_bit(MMF_HAS_PINNED, mm_flags))
+               set_bit(MMF_HAS_PINNED, mm_flags);
+}
+
 #ifdef CONFIG_MMU
 static struct page *no_page_table(struct vm_area_struct *vma,
                unsigned int flags)
@@ -1270,17 +1281,6 @@ int fixup_user_fault(struct mm_struct *mm,
 }
 EXPORT_SYMBOL_GPL(fixup_user_fault);
 
-/*
- * Set the MMF_HAS_PINNED if not set yet; after set it'll be there for the mm's
- * lifecycle.  Avoid setting the bit unless necessary, or it might cause write
- * cache bouncing on large SMP machines for concurrent pinned gups.
- */
-static inline void mm_set_has_pinned_flag(unsigned long *mm_flags)
-{
-       if (!test_bit(MMF_HAS_PINNED, mm_flags))
-               set_bit(MMF_HAS_PINNED, mm_flags);
-}
-
 /*
  * Please note that this function, unlike __get_user_pages will not
  * return 0 for nr_pages > 0 without FOLL_NOWAIT
----8<----

-- 
Peter Xu

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJqTa%2BFXy2g/kvEU%40t490s.
