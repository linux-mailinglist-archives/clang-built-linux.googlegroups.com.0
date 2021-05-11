Return-Path: <clang-built-linux+bncBCKM377TVAMBBAWF5KCAMGQEPNZ2FWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC4537AAAF
	for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 17:28:04 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id n1-20020a628f010000b02902a0e02b2be8sf9934593pfd.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 11 May 2021 08:28:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620746883; cv=pass;
        d=google.com; s=arc-20160816;
        b=T9eSJnAt10pFa6tZor8n6cttDOutSAiWqtgu6E8gmGxXLj7MaRmSRYfEVGaDAx0NNk
         dB5XSNbjwN2BBPqNjGExHfnH5vNt2TBEXZpsSR/D+9U8iyHU3OT+c61bpHtHnf57Gh1w
         nXQuNHSPtXrV6jeTB8yJXyzRCRjy0X4YWW+qQimWuRNS0mnlzOHgXt0BQk0CVhHn9ufY
         T+41jTxEqoPWb4UbqQ3ckBaKDuWddM23SggwNC/q9YWV05GNt8PUFLRLsqNA2UDwNsBb
         O2gNKFbD6G7sIkIe/oELLz/BDhP01KDTbKLW7/nGtvbdoP7RTCEPijdClhZpfIn47CcC
         6kbw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition:user-agent
         :in-reply-to:mime-version:references:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=zCHDA9Ji8woyVQJYFgFDdcpBjOIHcJM+44e2BYv4vdE=;
        b=maXjtNcveU2o5mQDapkqzM8K7nBJ9vKbwhymVfXHUKTDpA2RIighlGPhwqmLOlAaZI
         rYLyB6QVxmPxlMlHV5HAJPHB0uOP5u41g2xrkmyMimzORuTdIsy0cWS5RXEW/h6HcYsk
         Jyj25BFuuDS2WrGz9woUtHnQiYeeMdpSe9+Yb5DC6raSLt/fgG3G4Uf0rhNnu4E+OOFY
         Repj6cwpUtQS9/4eTk+kG3/G3kKpYcNRIFEBUPoeuAOgLDvZxfS0kaLfn5+jlsLK2uPm
         zwhxQQqsJOqoZ1frjQOJBQ8PEi1eCyLtV5aonP8BsDxzMObUBaeQHZoS7YBLZgwpf/qg
         xExA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="i/3UHYA0";
       spf=pass (google.com: domain of aarcange@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=aarcange@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zCHDA9Ji8woyVQJYFgFDdcpBjOIHcJM+44e2BYv4vdE=;
        b=Ca0kvH+HBw9f1UcafwvSNZP/Gr/E7/qxnxiP2aX327yl0WS26QxEQqOUR0jwbnd+0G
         gHrWuVtQlQiMRDb8ZOg4qmwOCGsRxgdL3EizWk6PvXBTOf1rMSP1TN6xjg+SutCwcVDG
         biHV18jluIrczUF35DHGfUnpZiP4qV0jxz3NSPUg8NNcMxYnDDwPV+lIYK452fNJio7l
         saztsKzWXRfau5XXZ906fFGJAWTeG4p6Z/XCSWAk82XVndsPglSsEFvZXTjbYCP8p/jS
         CW3omg018k9yiZenrV8AP2OQQ5b+dk76RtSYWcokEpnvJCe9bsnfjcxjdxkyEhYf0PsG
         vlbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:in-reply-to:user-agent:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zCHDA9Ji8woyVQJYFgFDdcpBjOIHcJM+44e2BYv4vdE=;
        b=MH0DFks2VX4+Bvv6uH/KPmd2h6OKyU/2ct4frCyH8SklbpWUcGAJG2DEzH+HpILnVq
         tn1C58FVf6eFAbGuz90ezTfbgvlF/kmbLxvXsfxDKpOnXMH6GNFPQ9jpqeL0ts6P5YVc
         VFwQ8coNv3MRausbddbEeToJyPc0KFqYgnjyKktBtQHQrju3XLCCFRfnFxQnG1O5k5m7
         aYWlfo34PtcfBxuowKy9woxN1m9nUuOec+tdUDRVyzcIfCAfRJyF4a5LAdkHRkvKh+rk
         /76kzX0nPauVbk7t5kzygK+j3e1s49IJcVDGVYucyiJrCUFkchtblE77pYpDfGYenXI+
         TCPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327cqUynfYrMglb9xTHV/YRwrVGshuEN2keURz2fZgi/QWg74qF
	mP2NXoAm3i3+KVG36pqimiQ=
X-Google-Smtp-Source: ABdhPJz++8HeNOysAGVGD0RpBJKO9avC5QpYFZL/wZrFLozvYbItyECU5Qeh3piH7Ag+vV1TdayYOw==
X-Received: by 2002:a17:90a:8410:: with SMTP id j16mr34155259pjn.120.1620746882882;
        Tue, 11 May 2021 08:28:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:938e:: with SMTP id t14ls7810006pfe.11.gmail; Tue, 11
 May 2021 08:28:02 -0700 (PDT)
X-Received: by 2002:aa7:96a5:0:b029:28e:97c0:cb5e with SMTP id g5-20020aa796a50000b029028e97c0cb5emr30953620pfk.7.1620746882189;
        Tue, 11 May 2021 08:28:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620746882; cv=none;
        d=google.com; s=arc-20160816;
        b=DFuXcxEpPd1OSOVTPdYgHRNoCI3U+IaPgjXeu1kiSuTZQoCIekyJpZjuSpgK+ilMTb
         Nqf+WZqoEnWxdT3eH2IOvkxBLqL+3cDxiAn1jF7gb1UXXqmV8CuxITnDM3VxiJQtJXFr
         KmqgfXVg06C5+6SHojJjh8FEgX560xoilIm2DSLCseGG8wSwMNgHLHf1ESyW56FwcbyP
         HWSlR2qs3IFq+iPKlIZWngDOfbUnWqUiLbJx31QMqpQ2vxNvWY8n3dwzqWdXtE7t0VOZ
         ViN5gnUB7dPZCbom3SpLrQ5BcAHRryuJIwWun0230933c8dJy8AFaJgty6dYnZGXf723
         LjAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=A2dCLiQtEbJABWIP9shYfyFX+XijJpYUdQjAKlRUQvQ=;
        b=VSRVDfTV0Ayl5bw/fzVSbLiSSTZevm4OeetvVe4ieZIgaQfbwPC5gkcxOPjjW7CZ5M
         MT12nsYVpAEIgzR/U3dFwuYqPc33ji7agZ/k7dvE10x2poqzUvgoKfUIhlxRmXAwQYMV
         iwL5SqJzpuGqEyVTnvUDK32owEqMz/QRDUg1KLlcTbZhhvT03+nv4aDo/8iDKV8vmkOP
         NdEfOrPpLJcHG6i/wU5E/XsqzKfewuGAQNCtcpamaeWPpx0B2qFRU/nSUR9q7hMUnPu1
         7oWStDP+f2NZoPrGl1wz5E8C+E04gUG5fl8/RagC+GmCTpqT7aEccIX8cfxW5VFrtEyx
         +BiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="i/3UHYA0";
       spf=pass (google.com: domain of aarcange@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=aarcange@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id md7si280559pjb.3.2021.05.11.08.28.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 May 2021 08:28:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of aarcange@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-549-Y7PBOO_JOgKfi7x73boxYQ-1; Tue, 11 May 2021 11:27:59 -0400
X-MC-Unique: Y7PBOO_JOgKfi7x73boxYQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6D36279EC0;
	Tue, 11 May 2021 15:27:57 +0000 (UTC)
Received: from mail (ovpn-113-12.rdu2.redhat.com [10.10.113.12])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 66B9519C44;
	Tue, 11 May 2021 15:27:50 +0000 (UTC)
Date: Tue, 11 May 2021 11:27:49 -0400
From: Andrea Arcangeli <aarcange@redhat.com>
To: Peter Xu <peterx@redhat.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [aa:mapcount_deshare 20/27] mm/gup.c:2756:3: error: implicit
 declaration of function 'mm_set_has_pinned_flag'
Message-ID: <YJqidUiqsgfibl+R@redhat.com>
References: <202105111829.jGDViOAc-lkp@intel.com>
 <YJp5G5gdySlpVHwV@redhat.com>
 <YJqTa+FXy2g/kvEU@t490s>
 <YJqWdPZEro8Thkcr@t490s>
MIME-Version: 1.0
In-Reply-To: <YJqWdPZEro8Thkcr@t490s>
User-Agent: Mutt/2.0.7 (2021-05-04)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: aarcange@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="i/3UHYA0";
       spf=pass (google.com: domain of aarcange@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=aarcange@redhat.com;
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

On Tue, May 11, 2021 at 10:36:36AM -0400, Peter Xu wrote:
> On Tue, May 11, 2021 at 10:23:39AM -0400, Peter Xu wrote:
> > On Tue, May 11, 2021 at 08:31:23AM -0400, Andrea Arcangeli wrote:
> > > Hello,
> > > 
> > > thanks to the report.
> > > 
> > > Peter, this isn't immediately clear to me, is it perhaps something
> > > related to clang?
> > > 
> > > This is commit 8dec302e87453234fc7ac1cf4d09e4d577a06cf3
> > 
> > Andrea,
> > 
> > I guess it's probably a NOMMU arm config so the helper got opted out as I
> > errornously put it into a CONFIG_MMU block without noticing..
> > 
> > So we may need to squash below into that commit.
> > 
> > I really should think of something to avoid such errors in the future, as this
> > is the 2nd time happening at least this year..  Probably I should always start
> > adding helpers at the beginning of files so I won't overlook any macros..
> > 
> > Thanks,
> > 
> > ----8<----
> > diff --git a/mm/gup.c b/mm/gup.c
> > index bb130723a6717..0223644d0c61a 100644
> > --- a/mm/gup.c
> > +++ b/mm/gup.c
> > @@ -392,6 +392,17 @@ void unpin_user_pages(struct page **pages, unsigned long npages)
> >  }
> >  EXPORT_SYMBOL(unpin_user_pages);
> >  
> > +/*
> > + * Set the MMF_HAS_PINNED if not set yet; after set it'll be there for the mm's
> > + * lifecycle.  Avoid setting the bit unless necessary, or it might cause write
> > + * cache bouncing on large SMP machines for concurrent pinned gups.
> > + */
> > +static inline void mm_set_has_pinned_flag(unsigned long *mm_flags)
> > +{
> > +       if (!test_bit(MMF_HAS_PINNED, mm_flags))
> > +               set_bit(MMF_HAS_PINNED, mm_flags);
> > +}
> > +
> >  #ifdef CONFIG_MMU
> >  static struct page *no_page_table(struct vm_area_struct *vma,
> >                 unsigned int flags)
> > @@ -1270,17 +1281,6 @@ int fixup_user_fault(struct mm_struct *mm,
> >  }
> >  EXPORT_SYMBOL_GPL(fixup_user_fault);
> >  
> > -/*
> > - * Set the MMF_HAS_PINNED if not set yet; after set it'll be there for the mm's
> > - * lifecycle.  Avoid setting the bit unless necessary, or it might cause write
> > - * cache bouncing on large SMP machines for concurrent pinned gups.
> > - */
> > -static inline void mm_set_has_pinned_flag(unsigned long *mm_flags)
> > -{
> > -       if (!test_bit(MMF_HAS_PINNED, mm_flags))
> > -               set_bit(MMF_HAS_PINNED, mm_flags);
> > -}
> > -
> >  /*
> >   * Please note that this function, unlike __get_user_pages will not
> >   * return 0 for nr_pages > 0 without FOLL_NOWAIT
> > ----8<----
> 
> Btw, there's also a space issue with the patch (we need to reindent
> mm_set_has_pinned_flag so to use tabs rather than spaces), otherwise checkpatch
> seems to complain.  Sorry about both issues!

Right, noticed the space issue but I didn't report it because it was
secondary.

Agreed it looks the nommu issue. In the patch the nommu bit didn't
showup since context was missing.

Thanks!
Andrea

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJqidUiqsgfibl%2BR%40redhat.com.
