Return-Path: <clang-built-linux+bncBCILLLGERUHBBY6FX2AAMGQEV4SHQ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 251D93033B3
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 06:04:37 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id y10sf8955956pll.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 21:04:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611637476; cv=pass;
        d=google.com; s=arc-20160816;
        b=YC/nL1llgUk3YypHOitxggivMHbVZkZSVYfisbWPkQVY0kIrhx2wIi+fr9crbJvNYP
         BKcKwHES4ycw54paEtiyt3EzBMfMpi1gqaW2GV9Zg/jRx6TtW7U3v9/SEx7QJMU9/qbe
         vzzGJR/R1RahM/QYSzr6hzwBusqgG2o/XZRRKutyoXD4/a6AopBlgzobiuBVL2BwLQXz
         2TuHT3cyNUZMDTFSW2sMJBw0vrDQ41x8pNk59q1x2p2pGM2Ek/X80sddwkoFAlNJjZGR
         st0hdty9skaNgmsH3+A8OpLwIP5RslL+ahOZuIvoQfd3Su0jMiB9mpq7KiVD6OXcm+TR
         R2FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=yQyAeKLZ+SyC/I0aZeZic5wNWEcZuuwq4CxP2Q20N2U=;
        b=ddW19Ry7tPdDqZzQGGQ1fRz1nbsWrq+SJlaN5MiGEpOKLgxgp6CHDOYj9SeiJKGQx/
         6fKWUQkXNY1aaMleeB/4B0Qu+WhRv1AQey0qen3DynpJoB+kXsuwkUQwh24/mTjk1yu3
         +ImiDYOfWkA2gzDX30gJi8YlTOyn8WcgweCUtyNrxEF5hsS2n2niZDUlHbAGcFCWeZLc
         S4aDWgnsNszCIB0GEEJct3ObWdjxThzhtiMi1E5KSVhk0ua/g3ALcTx0a406UB/vdqgF
         UyZjhdIWDkXB5iBIVRSRwROW1/o3EKQgSv8KtwwmGPCjiRGFq+aJKhKp5wQTeruyfqvG
         WoUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.44 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=yQyAeKLZ+SyC/I0aZeZic5wNWEcZuuwq4CxP2Q20N2U=;
        b=KgWn5ecESxfk1OFvGhigJAwXNN/C8ezTvd2o5IsLQGT1KCCDI68U2wMsNhSKrP4oNi
         84PVyMHLWxZry7KiCWgyBb8iq64RgoSmey2l/zrKlpmC8jnqsCfbUoJR8wMpVT+emxXK
         MFfe7cSzeTXGu+ozYTxSVqo6XakR1G2Uwm3YzGzGbmbwR9xy0P9Q5zpCabtrlhvZanI2
         hjs1KBNXh3dxiLGaSac9N6yuIGQEIetp42uQCiJXSIe34FBDKZY5/FvAd0nQ4uhjoNJn
         3GaoYgUGtCX53aSFdKnH/xbuaOpTFRBnPp3UzQAE74+7eovGw6Ypj3H4mKJmbzZWEJXx
         6W4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yQyAeKLZ+SyC/I0aZeZic5wNWEcZuuwq4CxP2Q20N2U=;
        b=IE2qwtoWHdTBw/d2ix2Kq11yFsh+60DwvFfAlBiFvcOwGtIlzbBMna4KAC/9sDp8dg
         RDuJEjt/+oMoL5gCxMaoLKjxHLY9O1dLHsOqfVOVwWLssXV5XXvpHz1cXfPEZoZzVrrB
         b+R9ay8XGflH/Ij65vcMqqGvqfd/0PyydzCWS7OxY7Fa+DBD8EAkoPK8gyyheOgxbFrN
         nAn2qBXpKjQCyXqJSezau/PHrPiWKcfhPO8kP8GEpEAmLXN+juLCxe1gq7+s/FJc1JOC
         8Udx/DC0kIdtOpNTciP74NHoobDWHjYrtqtIXsSmBLTiexD/xEtchFovcDjUJ+kFyNPt
         xFxA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RQ3exYc7P07OqtZja91vk9Z02fX6ir/v78CXeTsYC8ysuXjHg
	axVSQUv4aqZT+MWtwgKb39I=
X-Google-Smtp-Source: ABdhPJz88dacaqMM0O46FqlO9HtADTcSVch+hTr/b6pLRno1jpCXAuH6EXBu78wQu3Lj/7/hgJ+arg==
X-Received: by 2002:a17:902:6a83:b029:dc:2a2c:6b91 with SMTP id n3-20020a1709026a83b02900dc2a2c6b91mr4171922plk.8.1611637475756;
        Mon, 25 Jan 2021 21:04:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6a11:: with SMTP id m17ls5670388pgu.6.gmail; Mon, 25 Jan
 2021 21:04:35 -0800 (PST)
X-Received: by 2002:aa7:9596:0:b029:1be:28cc:cfe8 with SMTP id z22-20020aa795960000b02901be28cccfe8mr3532374pfj.49.1611637475088;
        Mon, 25 Jan 2021 21:04:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611637475; cv=none;
        d=google.com; s=arc-20160816;
        b=wyBuuEcuKLUyXhziRkQy6qgRz7uIlGveWdD6iK/vIsPRRD5pYaRh+OVCOYFdCshwIj
         ydRx97jUJnI//pBWmAxyNT0dN75iV82XaoOGmgZvWwfItoyBygK699dWa1lUVYpzrP0/
         jU/nq9MyPa2ylBrxcBj0AVGzNKUEvX1nANHS3JzQi2E/hmW6/ppA3jiX5Dh/4b1eoOIq
         p6zwfyzlI67J3UqudmjLDb5Fh3ReR7MhrzKUSjqV8PHdgqQmt+WnivWQ2hNkUOVy8avf
         pkodHcMyCiNFDGsotg4M8Ae6Xg9yCDR2iN2kVRn7lG3lHsyP1eYBVP0UfdIWATbvtCoM
         oaAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=vcdD4SJ/UJtTKofX4QSGmixhFV/E0gfx+ZOLgohHiJg=;
        b=vfECxiWtd15dxnb718B5KWygSm0zHAktjBXTIk2EcnYZP3L6JejFij2Vba+ae/L/da
         ihJPhYT4fkVyww0PGWCRrziNxS5gMgsB/ZM2suDzz6s3Uo5Z/rjtp0+6tbwJ7HOczmTU
         GUv/MKDB2HKX+WWIh8gwbRwf42vM3MY4XKQ+3rkagZf1pjocxfr7Mmk9kCWPxAFUOFn4
         zmZ6zEItTfjmWKlwEfb7PxhXKKZolF3cAk7KiuOc3QV9KGBIGUxcM2bi3lAbV4nZ9QB1
         EODO6bIBF1PkqZsf6n0bldklHUm6LRuiqFuiT7EdoJNWN1cVQfNFyyHtw8adUfsvv339
         gIBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.44 as permitted sender) smtp.mailfrom=dennisszhou@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com. [209.85.166.44])
        by gmr-mx.google.com with ESMTPS id ep11si87176pjb.0.2021.01.25.21.04.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Jan 2021 21:04:35 -0800 (PST)
Received-SPF: pass (google.com: domain of dennisszhou@gmail.com designates 209.85.166.44 as permitted sender) client-ip=209.85.166.44;
Received: by mail-io1-f44.google.com with SMTP id n2so31338508iom.7
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 21:04:35 -0800 (PST)
X-Received: by 2002:a02:9042:: with SMTP id y2mr3428226jaf.94.1611637474552;
        Mon, 25 Jan 2021 21:04:34 -0800 (PST)
Received: from google.com (243.199.238.35.bc.googleusercontent.com. [35.238.199.243])
        by smtp.gmail.com with ESMTPSA id d12sm11855755ioh.51.2021.01.25.21.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 21:04:33 -0800 (PST)
Date: Tue, 26 Jan 2021 05:04:32 +0000
From: Dennis Zhou <dennis@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Tejun Heo <tj@kernel.org>,
	Christoph Lameter <cl@linux.com>, Linux-MM <linux-mm@kvack.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org, kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] percpu: fix clang modpost warning in
 pcpu_build_alloc_info()
Message-ID: <YA+i4O/2OrUI2pcK@google.com>
References: <20201231212852.3175381-1-dennis@kernel.org>
 <20210104234651.GA3548546@ubuntu-m3-large-x86>
 <X/O46grb51Z4faI1@google.com>
 <CAK8P3a2ZWfNeXKSm8K_SUhhwkor17jFo3xApLXjzfPqX0eUDUA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a2ZWfNeXKSm8K_SUhhwkor17jFo3xApLXjzfPqX0eUDUA@mail.gmail.com>
X-Original-Sender: DennisSZhou@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dennisszhou@gmail.com designates 209.85.166.44 as
 permitted sender) smtp.mailfrom=dennisszhou@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Jan 25, 2021 at 12:07:24PM +0100, Arnd Bergmann wrote:
> On Tue, Jan 5, 2021 at 1:55 AM Dennis Zhou <dennis@kernel.org> wrote:
> >
> > On Mon, Jan 04, 2021 at 04:46:51PM -0700, Nathan Chancellor wrote:
> > > On Thu, Dec 31, 2020 at 09:28:52PM +0000, Dennis Zhou wrote:
> > > >
> >
> > Hi Nathan,
> >
> > >
> > > Hi Dennis,
> > >
> > > I did a bisect of the problematic config against defconfig and it points
> > > out that CONFIG_GCOV_PROFILE_ALL is in the bad config but not the good
> > > config, which makes some sense as that will mess with clang's inlining
> > > heuristics. It does not appear to be the single config that makes a
> > > difference but it gives some clarity.
> > >
> >
> > Ah, thanks. To me it's kind of a corner case that I don't have a lot of
> > insight into. __init code is pretty limited and this warning is really
> > at the compilers whim. However, in this case only clang throws this
> > warning.
> >
> > > I do not personally have any strong opinions around the patch but is it
> > > really that much wasted memory to just annotate mask with __refdata?
> >
> > It's really not much memory, 1 bit per max # of cpus. The reported
> > config is on the extreme side compiling with 8k NR_CPUS, so 1kb. I'm
> > just not in love with the idea of adding a patch to improve readability
> > and it cost idle memory to resolve a compile time warning.
> >
> > If no one else chimes in in the next few days, I'll probably just apply
> > it and go from there. If another issue comes up I'll drop this and tag
> > it as __refdata.
> 
> I've come across this one again in linux-next today, and found that
> I had an old patch for it already, that I had never submitted:
> 
> From 7d6f40414490092b86f1a64d8c42426ee350da1a Mon Sep 17 00:00:00 2001
> From: Arnd Bergmann <arnd@arndb.de>
> Date: Mon, 7 Dec 2020 23:24:20 +0100
> Subject: [PATCH] mm: percpu: fix section mismatch warning
> 
> Building with arm64 clang sometimes (fairly rarely) shows a
> warning about the pcpu_build_alloc_info() function:
> 
> WARNING: modpost: vmlinux.o(.text+0x21697c): Section mismatch in
> reference from the function cpumask_clear_cpu() to the variable
> .init.data:pcpu_build_alloc_info.mask
> The function cpumask_clear_cpu() references
> the variable __initdata pcpu_build_alloc_info.mask.
> This is often because cpumask_clear_cpu lacks a __initdata
> annotation or the annotation of pcpu_build_alloc_info.mask is wrong.
> 
> What appears to be going on here is that the compiler decides to not
> inline the cpumask_clear_cpu() function that is marked 'inline' but not
> 'always_inline', and it then produces a specialized version of it that
> references the static mask unconditionally as an optimization.
> 
> Marking cpumask_clear_cpu() as __always_inline would fix it, as would
> removing the __initdata annotation on the variable.  I went for marking
> the function as __attribute__((flatten)) instead because all functions
> called from it are really meant to be inlined here, and it prevents
> the same problem happening here again. This is unlikely to be a problem
> elsewhere because there are very few function-local static __initdata
> variables in the kernel.
> 
> Fixes: 6c207504ae79 ("percpu: reduce the number of cpu distance comparisons")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> diff --git a/mm/percpu.c b/mm/percpu.c
> index 5ede8dd407d5..527181c46b08 100644
> --- a/mm/percpu.c
> +++ b/mm/percpu.c
> @@ -2662,10 +2662,9 @@ early_param("percpu_alloc", percpu_alloc_setup);
>   * On success, pointer to the new allocation_info is returned.  On
>   * failure, ERR_PTR value is returned.
>   */
> -static struct pcpu_alloc_info * __init pcpu_build_alloc_info(
> -                               size_t reserved_size, size_t dyn_size,
> -                               size_t atom_size,
> -                               pcpu_fc_cpu_distance_fn_t cpu_distance_fn)
> +static struct pcpu_alloc_info * __init __attribute__((flatten))
> +pcpu_build_alloc_info(size_t reserved_size, size_t dyn_size, size_t atom_size,
> +                     pcpu_fc_cpu_distance_fn_t cpu_distance_fn)
>  {
>         static int group_map[NR_CPUS] __initdata;
>         static int group_cnt[NR_CPUS] __initdata;
> 
> 
> Not sure if this would be any better than your patch.
> 
>        Arnd

Hi Arnd,

I like this solution a lot more than my previous solution because this
is a lot less fragile.

Thanks,
Dennis

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YA%2Bi4O/2OrUI2pcK%40google.com.
