Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4HASOBQMGQEX7SVP4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8613509D2
	for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 23:58:09 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id u68sf2162348pfb.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 31 Mar 2021 14:58:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617227888; cv=pass;
        d=google.com; s=arc-20160816;
        b=OOC+BsfKlpwAgKEDnr6RGdgKZ5LHSSdSodWU+44aySHa2Y2kuvDNfLHcAOEAi07lby
         fKHSjexq/SEZKH2F+IATIH9AjRpRr+HXHCkm31d6x/tV4P0aevYyUdjE+xxNT9Tb00HQ
         j2q/QBzvj6u1fdbh9Sus+za7OetRu8QbsORCl76NNK2B8bmXTHGLZvTf+HKVrr5CrssF
         mNwtWt/fkZDjVRrWYa9vjrPdm1hc4uB7SaVa3oWPRXUx2FuxirJ6KvE79BgsnK3anD/u
         TLMEjrw5z/70RbTs6sug7nrlBVBm6W9TCOixKZd/wArPh5M7aN9o+LhxkiFBHyRh5prt
         X/Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1xUAtUlYx1AvIuUgTzRbk/76Kc5ZYDjGK/41zMQi3AY=;
        b=D3pzU0B2TdfWfNgXlh3yZH7C3G3D0Gxf6GJDi+YLZ3nWbmPN7GkjUE7RkWqhU+cCmf
         B14qKjCrMC9eT5BRHwxAovSMlzrl6P85q5JyiE1clmNTxDz4Kns0p2cZHZ+nFpVW239Y
         Ojf3gBLh/tEVl+lZy4VuGcXhw6vfYiwh8vIAyrqRuPvUvAsTTD7hXruLeG3Ia7QrJnZx
         khq21WLz/OVNkKoEylr0PpGsfCYTSNfDMBE/cInRdbCXIX6W0TKWI8tzDJJ2/tAPGIoy
         ONmNLskm6NJje76sZ4bR1+AgQHAXlFLYgpNhjZyofVYS7F4SIRMK7gs0JlMeI1yhkQdQ
         D0qg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=V8xr6TMO;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1xUAtUlYx1AvIuUgTzRbk/76Kc5ZYDjGK/41zMQi3AY=;
        b=citazZCn9hbGFEQ7YJuplCKOkmRMCRJFD17caXlQdbfUuMIV3hhyDPBzroWljSYA1G
         4VqYncAQ1ZMh39NFDyISvLnjXHij6+dSIS6HTHSY6TjdjvEphK6IS3mIxLN7WURk3RuB
         WmW3zHFzqZfuxDsyat8wYO6MAxMUQCiY+HzPhu7JBFwAmPfb3FApUZ1SjpDh+1f62VXo
         XX4lUnzqCh9GWJz4CowVB/yGD+BDs7QOu9+tDXl3JBWMMic/zirgbPUoD8IFcQM//Y0R
         8jJTCtlA3nDBE3cSlK8bhi+31FBlF3VSbAQBMRlwNSSmbZJWRUVrBQQZlb2DZ8YgnUZR
         hw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1xUAtUlYx1AvIuUgTzRbk/76Kc5ZYDjGK/41zMQi3AY=;
        b=Ib+NkAgbtv7EIadyiaR2votZLH4djrYicqFvvvFf7uffK9NJIprSWbc80g4ny4pp/0
         IIHmLwXGJ9GEL4TXo8chuRcw9v2fushsd0vBZGIScLq6d64lJb/7aad2gA42brq3mbk/
         BrG3Kjk6heaYtvr8dT7MxFrli0bc+GxUwyH8G6LQ9Ay02o5V+eKCDdcyGSuXXXLIhag3
         94/NGD3k6jRMGnnEkdd9mNaOE1cyYvyqloxUSETNQTSRMwKlLKn3ysKds0RJr4c3F81a
         TtnxME+b7dViFQcIMu45P2TnvgJmZBoqIw9uOXvo1+GgChU1+cBY74VigFkq34pAn4pt
         pTeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qyH77IgPfntii53sQuzI+dAi57890+xYRJUsOXRS6bGnXH9AH
	fRS2W7pMlNsAXge2FmGCUw8=
X-Google-Smtp-Source: ABdhPJzE/ysqq+WDJTLpt8PxtymycJf16pZlM569Jy8f3O0jlsvecM5LSo/qfisqyQjhoH5vYAAmSw==
X-Received: by 2002:a17:902:b40e:b029:e6:837f:711 with SMTP id x14-20020a170902b40eb02900e6837f0711mr4866309plr.2.1617227888205;
        Wed, 31 Mar 2021 14:58:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2a8e:: with SMTP id j14ls2099953pjd.3.canary-gmail;
 Wed, 31 Mar 2021 14:58:07 -0700 (PDT)
X-Received: by 2002:a17:90a:a103:: with SMTP id s3mr5580460pjp.158.1617227887706;
        Wed, 31 Mar 2021 14:58:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617227887; cv=none;
        d=google.com; s=arc-20160816;
        b=ieVkGIMw+PEMDngOjq15Fz/z5+G0hjeWMH/7MxQX4P7yLy6z/ymPYBYfpAn4f0rszy
         SmKD/JFr5QuJAidEK48abLSj1ZDLx6Ze/T75HWq84nPC7iBf7ZRT/pg9xsmF3vz7yOVm
         sLK6nNyEHvngJo2+Lg1osV9ZNMF+jRrbNxKkCzpvDbg7wMSVYslGr5GbpXZg6tAJmlws
         8DOFwc10WnkE8BC+PF1JNQoydZP9ZK43CvjpfVIUu9OMGT5dms4EuC80vOUrC+MzzgU9
         Gq6eIY3xKouBz9b5DPT9P+Z72qpV5XnjixSKeuw+mVvGJP15Rbjq1t431F4XmdmqRGOx
         tcSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GIGx1Vo96b4WRVYVw3w/IS6s0nKm7ESrNqon97ELwCU=;
        b=fLedRno7GGx7WbZtJKrm+TAdy5RmtiVOxL19UW/OQLe2lSn2v4nk7Zgix1w0GWbgwe
         QgZYCtATCZzVntI6mGy7lmZzoR5Psdx/YLs1eKondHKwPS6103SPC+v+BJbuoBzvXyvh
         IY7RYBBTVkwtZU+NsorjMQdMF+xvGj8pkC83LRTQY5fCGqkrpYYZC2VGst41v9YjH2ba
         b18ks2F1d907rMAlx3vytGRFk4VJc8sGO8JsjH+/6gZMU/4WjixvmSi5tpx7ot1N+dIC
         EJeO/kgIqg/q/jpbeFImc0OKMDo2jH8qJlJLlTbcC2ptMAVs5GMFzdsBLx6Gnr/lK+p7
         XroA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=V8xr6TMO;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e15si208630pjm.3.2021.03.31.14.58.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Mar 2021 14:58:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6438061002;
	Wed, 31 Mar 2021 21:58:05 +0000 (UTC)
Date: Wed, 31 Mar 2021 14:58:02 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jian Cai <jiancai@google.com>
Cc: Guenter Roeck <linux@roeck-us.net>,
	Christopher Di Bella <cjdb@google.com>,
	Manoj Gupta <manojgupta@google.com>,
	Luis Lozano <llozano@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Jens Axboe <axboe@kernel.dk>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-block@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] blk-mq: fix alignment mismatch.
Message-ID: <20210331215802.r4rp6wynjqutdoup@archlinux-ax161>
References: <20210330230249.709221-1-jiancai@google.com>
 <20210330232946.m5p7426macyjduzm@archlinux-ax161>
 <114a5697-9b5c-daf1-f0fc-dc190d4db74d@roeck-us.net>
 <CA+SOCLKbrOS9HJHLqRrdeq2ene_Rjs42ak9UzA=jtYb0hqWY1g@mail.gmail.com>
 <CA+SOCLLBgKtTz732O5zcrNs_F=iS6C2bE4HBmJfoPTum3Yu1oQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+SOCLLBgKtTz732O5zcrNs_F=iS6C2bE4HBmJfoPTum3Yu1oQ@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=V8xr6TMO;       spf=pass
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

Hi Jian,

On Wed, Mar 31, 2021 at 02:27:03PM -0700, Jian Cai wrote:
> Hi Nathan,
> 
> I just realized you already proposed solutions for skipping the check
> in https://lore.kernel.org/linux-block/20210310225240.4epj2mdmzt4vurr3@archlinux-ax161/#t.
> Do you have any plans to send them for review?
> 
> Thanks,
> Jian

I was hoping to gather some feedback on which option would be preferred
by Jens and the other ClangBuiltLinux folks before I sent them along. I
can send the first just to see what kind of feedback I can gather.

Cheers,
Nathan

> On Tue, Mar 30, 2021 at 6:31 PM Jian Cai <jiancai@google.com> wrote:
> >
> > Thanks for all the information. I'll check for similar instances and
> > send an updated version.
> >
> >
> > On Tue, Mar 30, 2021 at 5:26 PM Guenter Roeck <linux@roeck-us.net> wrote:
> > >
> > > On 3/30/21 4:29 PM, Nathan Chancellor wrote:
> > > > Hi Jian,
> > > >
> > > > On Tue, Mar 30, 2021 at 04:02:49PM -0700, Jian Cai wrote:
> > > >> This fixes the mismatch of alignments between csd and its use as an
> > > >> argument to smp_call_function_single_async, which causes build failure
> > > >> when -Walign-mismatch in Clang is used.
> > > >>
> > > >> Link:
> > > >> http://crrev.com/c/1193732
> > > >>
> > > >> Suggested-by: Guenter Roeck <linux@roeck-us.net>
> > > >> Signed-off-by: Jian Cai <jiancai@google.com>
> > > >
> > > > Thanks for the patch. This is effectively a revert of commit
> > > > 4ccafe032005 ("block: unalign call_single_data in struct request"),
> > > > which I had brought up in this thread:
> > > >
> > > > https://lore.kernel.org/r/20210310182307.zzcbi5w5jrmveld4@archlinux-ax161/
> > > >
> > > > This is obviously a correct fix, I am not just sure what the impact to
> > > > 'struct request' will be.
> > > >
> > >
> > > As commit 4ccafe032005 states, it increases the request structure size.
> > > Given the exchange referenced above, I think we'll need to disable
> > > the warning in the block code.
> > >
> > > Thanks,
> > > Guenter
> > >
> > > > Cheers,
> > > > Nathan
> > > >
> > > >> ---
> > > >>  include/linux/blkdev.h | 2 +-
> > > >>  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >>
> > > >> diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
> > > >> index bc6bc8383b43..3b92330d95ad 100644
> > > >> --- a/include/linux/blkdev.h
> > > >> +++ b/include/linux/blkdev.h
> > > >> @@ -231,7 +231,7 @@ struct request {
> > > >>      unsigned long deadline;
> > > >>
> > > >>      union {
> > > >> -            struct __call_single_data csd;
> > > >> +            call_single_data_t csd;
> > > >>              u64 fifo_time;
> > > >>      };
> > > >>
> > > >> --
> > > >> 2.31.0.291.g576ba9dcdaf-goog
> > > >>
> > >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210331215802.r4rp6wynjqutdoup%40archlinux-ax161.
