Return-Path: <clang-built-linux+bncBAABB7WMXKAAMGQEBHNPC2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2EF30240E
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 12:07:44 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id l51sf1310840otc.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 03:07:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611572863; cv=pass;
        d=google.com; s=arc-20160816;
        b=yKBsoc3X4iUcKLNkzWl4MwV7d9moN5QjF+KSfCcHUaXbyR+BpRX+za8Hgb/oRvRxCY
         Ap4rH+8QaKd7YG7/vWkDxXN2ZSwXNeRJn0kvQUK64bKnvhIdhySZuTLHhZ6vTXNoAcPx
         wZnPqwvqkpm/IQyGn4Mot5yK8/ekw4dn/dQOgRlpLhm2JJBZqtKf/uopAtveLrQQZXQq
         Pt4tRv7VbunaHuFwAUzI5tkcJdql/3otwtmSBTbO4YtmR+42Z/0bg5hlc4/4ezB8897X
         fDkq077c1QHd3h+jFuki6cqzCm3SENnL9tBK+ogDc+PXv8MKQ2tzqFaURIcGaTjOIA93
         8uvA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=0hGxk3S5vsEUmi35Sz9cE9OQaHFx5ebiLlhWF2+LKRg=;
        b=iSB+1lnitXgSVOgy6n/46dC8Zq4zH1P97viPPJl0VdcGaJt0V14lKEjKRULOuCsGbt
         hsei404GLJMP0B+yKMPdij1sFVhZ2t8DgHUDUv4gpBmkaIh6/znIEVCRGA53vhrZTqkO
         aoI0pIp6xRsLhL6kJA9Mq9FG0FomIUIMY/IUSu3HwG2ZakOOXtH4sNATXxe5pagHl7pp
         e/pxP/0AleSgTsQA3iMAw7XG3SvqAazNvrTlYetg3j0AtNCD1QngmKAE2nOKzYKIWVE6
         wQe5iXiQyPruR1dXtR1z3IMCPBA13CZWBamgJcxp5Ln6Ch7A8nqYbiONOFZTQqLc4vQT
         VAXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u1ecn5Kh;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0hGxk3S5vsEUmi35Sz9cE9OQaHFx5ebiLlhWF2+LKRg=;
        b=Xe29mSjfhh/nxPMxt2MzmggYfT99YU6lPbYYkxrhxVgOBUh/KXsQhZedJafok4uX2D
         y2rNQFsUIA+w6YtAAtbWyEP+W/XHhg97/OIQHl3piiiZZC+inD/XDRREOOQMOAE76aMT
         CHVlC3tc6XNMfheN2nccSpmae81KSSxYwGMiFUTehoWfb2OOI6eZCAt+uCI/63cwSIW4
         S40IQ4xDxra8A3xhYtHRCsWGeZrCmzRU6RZeXjR+DymwLQxSw6mmMLNY0Z5kBvubxYZZ
         v7gUC6y9Q26hZ3qH9mjTGaIGuz8VuGie74+/6EoQxu/cAsIOIj7dKCz40W4M79zUvh62
         hJ3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0hGxk3S5vsEUmi35Sz9cE9OQaHFx5ebiLlhWF2+LKRg=;
        b=CvE/uGOFJfCvcSQsBer2af0KBz3VJYEiWkf26dSGu8UN7p8TSlsv8WeZ3ei++NxKbp
         Y1yMfIMwdTOZLP5rYpOfNyJFx5di7Qt2zib57uFoXhTM0hrV0ltl7K1SG1pe1Ek5SxjY
         BVlP/BV2AuelNLV6fVAoOIeM6RMxJyJXJsOvgBwUxi3wgrS5bqNNGm0Wr16AYtbsMoGM
         GlNKXmTmYTsE0jbzKKXWt8Qfk4AsL0p/qgEiIBIHgq5R+wcnj4KuO5Qq5J/GBjkSgsUZ
         PIKrMS7Kn9KnPr1YLpf1P/WGAu77ZiOnFE8YsmLzyEGkRJMFvZxi71twIVx13JTWLEqw
         BBug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533CEtJNajTA71Vw2S6r+UJbRflBHUnyAQhXjqAdhHCaajC5rKvN
	Yrwi0X2khKKOKhSlmyv0vkw=
X-Google-Smtp-Source: ABdhPJyTtCJCfm6in8pih7g6Ga45r8FYhF0HxT1G1PT2mHm3B9cjk5zUZun4rxXgEOrtWqDdrOy26g==
X-Received: by 2002:a9d:1b25:: with SMTP id l34mr69331otl.131.1611572862807;
        Mon, 25 Jan 2021 03:07:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls1915532oif.10.gmail; Mon, 25
 Jan 2021 03:07:42 -0800 (PST)
X-Received: by 2002:aca:418a:: with SMTP id o132mr113803oia.53.1611572862491;
        Mon, 25 Jan 2021 03:07:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611572862; cv=none;
        d=google.com; s=arc-20160816;
        b=yTD8+xR2dB2Qi7NwUCRQ3RhmqkhIJKjt5Of947U+7/cos4m7p5cy/i7m+ucvj4iyQD
         /x4jNdz7uvqOfdUEPWO7z4Vhq/sSqoZCN6D09y/fQwGjDUC1bAWPQnR6fvaoQ+p6lWNL
         KNx6EYjGx92xt2918pM/H9sWyvfiZyHju3xD5szKPzl/FxRFWeep7bC0ByKX0kH20pLP
         LR42P8emz1qwH5hpteauyixZYnMeK74bmqScZ/UEUys++MdGFNA1okHaCyqpEFXGOzeH
         D+l8OJ4dTO8WSa3ITKSkItWasDGB+obv2RFtirTdliknYW3eUzlRSKFd5F/0ellAqQAf
         SL4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=H8Vebu9RN3bjchqMvYyY65LUrWcQ+VeiFk2qFhx2pnM=;
        b=i7pXQMBOBCqlTMCa8m4tPw9cE+BCb1cNP4G9r8L8Yl6oNRFB65octn8TGh24EgB5en
         Gir945JdRi4ILGymxm1k5g0ZDIJlmSBYDpQH7PEEOmTXxJ5lj+mLNyJTBYU2EwOMFjSb
         oXCd5tX+GAhCM+vp96Mxk2d9UPiHtpS5K9QzPas3xNgHSADzI3QgqkiL2IWwT+9AdfHp
         PtRmMC9oe9CeeeziRRD8ey7ByyYVmHQR5EE4hTpKLYTtcNUlTR15Q2WpRQCIx9uvC9cI
         mLXQpe5dYf5SQdXhFaI0GIdrr55Wt+l5ozO1drdByTirQ/VKgwddpaZ24NI28T33YWuk
         9CEw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=u1ecn5Kh;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l126si887151oih.3.2021.01.25.03.07.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 03:07:42 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7347B22ADF
	for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 11:07:41 +0000 (UTC)
Received: by mail-oi1-f179.google.com with SMTP id h192so14372726oib.1
        for <clang-built-linux@googlegroups.com>; Mon, 25 Jan 2021 03:07:41 -0800 (PST)
X-Received: by 2002:aca:be54:: with SMTP id o81mr126955oif.67.1611572860723;
 Mon, 25 Jan 2021 03:07:40 -0800 (PST)
MIME-Version: 1.0
References: <20201231212852.3175381-1-dennis@kernel.org> <20210104234651.GA3548546@ubuntu-m3-large-x86>
 <X/O46grb51Z4faI1@google.com>
In-Reply-To: <X/O46grb51Z4faI1@google.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 25 Jan 2021 12:07:24 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2ZWfNeXKSm8K_SUhhwkor17jFo3xApLXjzfPqX0eUDUA@mail.gmail.com>
Message-ID: <CAK8P3a2ZWfNeXKSm8K_SUhhwkor17jFo3xApLXjzfPqX0eUDUA@mail.gmail.com>
Subject: Re: [PATCH] percpu: fix clang modpost warning in pcpu_build_alloc_info()
To: Dennis Zhou <dennis@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Tejun Heo <tj@kernel.org>, 
	Christoph Lameter <cl@linux.com>, Linux-MM <linux-mm@kvack.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	kernel test robot <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=u1ecn5Kh;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tue, Jan 5, 2021 at 1:55 AM Dennis Zhou <dennis@kernel.org> wrote:
>
> On Mon, Jan 04, 2021 at 04:46:51PM -0700, Nathan Chancellor wrote:
> > On Thu, Dec 31, 2020 at 09:28:52PM +0000, Dennis Zhou wrote:
> > >
>
> Hi Nathan,
>
> >
> > Hi Dennis,
> >
> > I did a bisect of the problematic config against defconfig and it points
> > out that CONFIG_GCOV_PROFILE_ALL is in the bad config but not the good
> > config, which makes some sense as that will mess with clang's inlining
> > heuristics. It does not appear to be the single config that makes a
> > difference but it gives some clarity.
> >
>
> Ah, thanks. To me it's kind of a corner case that I don't have a lot of
> insight into. __init code is pretty limited and this warning is really
> at the compilers whim. However, in this case only clang throws this
> warning.
>
> > I do not personally have any strong opinions around the patch but is it
> > really that much wasted memory to just annotate mask with __refdata?
>
> It's really not much memory, 1 bit per max # of cpus. The reported
> config is on the extreme side compiling with 8k NR_CPUS, so 1kb. I'm
> just not in love with the idea of adding a patch to improve readability
> and it cost idle memory to resolve a compile time warning.
>
> If no one else chimes in in the next few days, I'll probably just apply
> it and go from there. If another issue comes up I'll drop this and tag
> it as __refdata.

I've come across this one again in linux-next today, and found that
I had an old patch for it already, that I had never submitted:

From 7d6f40414490092b86f1a64d8c42426ee350da1a Mon Sep 17 00:00:00 2001
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 7 Dec 2020 23:24:20 +0100
Subject: [PATCH] mm: percpu: fix section mismatch warning

Building with arm64 clang sometimes (fairly rarely) shows a
warning about the pcpu_build_alloc_info() function:

WARNING: modpost: vmlinux.o(.text+0x21697c): Section mismatch in
reference from the function cpumask_clear_cpu() to the variable
.init.data:pcpu_build_alloc_info.mask
The function cpumask_clear_cpu() references
the variable __initdata pcpu_build_alloc_info.mask.
This is often because cpumask_clear_cpu lacks a __initdata
annotation or the annotation of pcpu_build_alloc_info.mask is wrong.

What appears to be going on here is that the compiler decides to not
inline the cpumask_clear_cpu() function that is marked 'inline' but not
'always_inline', and it then produces a specialized version of it that
references the static mask unconditionally as an optimization.

Marking cpumask_clear_cpu() as __always_inline would fix it, as would
removing the __initdata annotation on the variable.  I went for marking
the function as __attribute__((flatten)) instead because all functions
called from it are really meant to be inlined here, and it prevents
the same problem happening here again. This is unlikely to be a problem
elsewhere because there are very few function-local static __initdata
variables in the kernel.

Fixes: 6c207504ae79 ("percpu: reduce the number of cpu distance comparisons")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>

diff --git a/mm/percpu.c b/mm/percpu.c
index 5ede8dd407d5..527181c46b08 100644
--- a/mm/percpu.c
+++ b/mm/percpu.c
@@ -2662,10 +2662,9 @@ early_param("percpu_alloc", percpu_alloc_setup);
  * On success, pointer to the new allocation_info is returned.  On
  * failure, ERR_PTR value is returned.
  */
-static struct pcpu_alloc_info * __init pcpu_build_alloc_info(
-                               size_t reserved_size, size_t dyn_size,
-                               size_t atom_size,
-                               pcpu_fc_cpu_distance_fn_t cpu_distance_fn)
+static struct pcpu_alloc_info * __init __attribute__((flatten))
+pcpu_build_alloc_info(size_t reserved_size, size_t dyn_size, size_t atom_size,
+                     pcpu_fc_cpu_distance_fn_t cpu_distance_fn)
 {
        static int group_map[NR_CPUS] __initdata;
        static int group_cnt[NR_CPUS] __initdata;


Not sure if this would be any better than your patch.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2ZWfNeXKSm8K_SUhhwkor17jFo3xApLXjzfPqX0eUDUA%40mail.gmail.com.
