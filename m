Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBPM3UWBAMGQEZVWSCTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 37147334BF3
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 23:52:47 +0100 (CET)
Received: by mail-pj1-x1039.google.com with SMTP id gv10sf5564888pjb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 14:52:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615416766; cv=pass;
        d=google.com; s=arc-20160816;
        b=k06KmxO21j/lB0ATJCO5HsHFEUsYepmXH2mdCjjMju3t0lafHhe1BkqyEanDW/JL81
         Zh4RBOdSpdnEw9egbXvEUJUJOBye5m1HoLzjqfQzkds/pfW9Lq0gUk3J/HcoS5HdF+pe
         77fsnUyi57nzh5qmOxDr2gK7lG7X2Y77m2BiC3DXeyhwe0nFCee9idd7torpulYT6XT4
         AmAKM0sFwaihKyxLvb+0LpWEKMLv95T25LGl9nvAmqWXUlQ/J9Xwr9inOFN3P42GlihQ
         BDSxXtCAq2/jU4NH+dsuulZnVj4jStcJpyyRdGc+Bd7QOVCTWr4oNT0OOouTRQxwuD8p
         LKjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sn7vO57WjtafOjBhqIxFovsu3+Evl5evZUkfYE0/6ZA=;
        b=D7QmkiWqKLdYvvlqeTFVqa7vYCj4ELR6cB3jDd61UV0DQ4mUHAroTkI2WkiZipKAHz
         YAW9ZdhsKbD3gFluYLXKseZtR5fnq9pJ2J9lPEec4jloAuoBFufrW02x2gqce3sHDPnF
         1Bt58fdDGQvL10aBaOMR+TdV+coabB9sMLFQlgqhCu/fsqDTdMBS0aHpgqYnRwRT8LuU
         jqHJw2xfjH50iZy/cUgRgU7Hf7g8OCDdGdwDaUEupyF2y6fLLVmDMSQ/WQ1XDca5fkKK
         e9rAMZ2BqShBl1DhtOpF8NN0eyn/PC1rOzArjlFJQPl6O86tiiKNIuo0N3mWpuzK4exq
         aHbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GSGF1V+n;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sn7vO57WjtafOjBhqIxFovsu3+Evl5evZUkfYE0/6ZA=;
        b=J4fG3p8STf7HU3qfsUFG/FBjvHP/SlSOcNSGTCX7U2kQDoVmxc2pTAMxtzHhsYxoLD
         Ag1xZ/WHOOqf4OE3upBZ5KPuvhSfl/KINDiE16sXqGNNdV7Gf8+ohKmQLdtNOmENs9Vf
         AKpL59F+lnhpLli9mcFpdJDOQRoNGPJFuxNQLcEJqyvGG+FOtSVUEx07GAegWF1S/h8h
         6lrcMLm98VCIk7oiNOk+YkmfqG3JhEcNo6/z8nY8HbKXXcrn+4+M+i6r2b957caIYsAe
         vr12mo3tAao3RaL8Jqs4F0Mbjn6l1EnrikBx+r5WZJNYypK8rmhb6sBTgEkle/qB1AbN
         DX7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sn7vO57WjtafOjBhqIxFovsu3+Evl5evZUkfYE0/6ZA=;
        b=me75rU6S/seJkMUk7opDQkgnWNtNwlZV2EfHjurQai02J4sDq0NVvdVqsZ2j1QHbHH
         J3m3Y+piELC2maXo02eUuLzTHs4dPX8wX6dW50sA5dBK7B5tF4ht0zi1l3zy66jDoNAK
         5g31kjMvtloYwIhN4Ysg8gHkhEI1vbIUKuPLQG6NJll10cDuVQugbnEUXpGvtCkj5p65
         Wqm5BzOXLmmHWLIgP1akCor5103zuO7yDTCTivm7bRnfCvqS35jwnl1w0yoJzDh2jH4E
         ahLKdcWUkEOZJ3xk4V94Xvc7eDRUA50oXgT0E1i8Ew34Pu0FDOWR2/y01PexyFiFXT16
         4bTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iLhJx8uB4QhqSscAnaoVw56u0GCYKbc/29f1pma04bK0QfmXj
	ISbaa4LVwiAsJFbz/nugnKk=
X-Google-Smtp-Source: ABdhPJy2st3126kAa5GVuxI/Gl8eW8Nt3qDfZZQbpTNCqXEKJLIEeCY3tR0ru04EK8HXmPj2C1tE2Q==
X-Received: by 2002:aa7:8286:0:b029:1e2:70ef:c410 with SMTP id s6-20020aa782860000b02901e270efc410mr4582738pfm.45.1615416765845;
        Wed, 10 Mar 2021 14:52:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bd8b:: with SMTP id z11ls2212089pjr.1.gmail; Wed, 10
 Mar 2021 14:52:45 -0800 (PST)
X-Received: by 2002:a17:90a:dd45:: with SMTP id u5mr5743675pjv.142.1615416765342;
        Wed, 10 Mar 2021 14:52:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615416765; cv=none;
        d=google.com; s=arc-20160816;
        b=szZ7GQgJQOwuwATBo6EVGS95QTftrmgCs46sY23GR/HqFhL7BPFTQP9/LgauaeBkwa
         n/AUjUyPuOebHlrapZ5KqciUnY+QfhDVd+Giszbb+NFeQaIUj1Y4Rp7qGhB0FahwJxkD
         klIbrooIynK2yNPTAkf+t8TIq8wE8OX09qiMZSn/IF9aKW6C0uAwTqg8ABkRSg1YCWOF
         g2jdT69Be/OaHVc0igalHi0XGoftn1Tv4Ym1Ewt1uVqPnUzkyp3jJ9bXbq1iuc9b78a2
         Yh0Qbwr52mbWNcKncniG5aUK72emzZSIDA8gVdWPX23zhmbAexkIxKkV24I19gHPomfO
         ltcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=l/V0rnJE6OLDuN2HXnZu9oIucUimu9eGroGywSwhTBA=;
        b=Z7JYim5lBCww4mVKM7PKTqGsbuwJjppbGtZtZEV7sKNlfq/J+m9OxkM8Pzp9HARmMj
         VfosuVJWh7eIpvitz/IJcPzkw+GSO2IMicv63A/OgruuiHciKnNF2GX80GO8TmYaBDCP
         vra2nT4SIr+yF8YMdJJ95dxNkhDuyDCefI9/zWLSbql/HrFRij+jfj9YgF5gWk8/Tjjn
         ZVfjQEj8rLB2rQ679SIcegfswwxLOobSQpIkx/LuQjeDu7ePqzfg4kfs3V/dIz7CQRoJ
         Qz479RY77cEsZ8sOzIyzs904txCOGth+3jg+0N7PwG/7xDhqR2vypCmHWKEUSCMFlqhK
         DLHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=GSGF1V+n;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k21si53945pfa.5.2021.03.10.14.52.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 14:52:45 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0A57D64FAD;
	Wed, 10 Mar 2021 22:52:43 +0000 (UTC)
Date: Wed, 10 Mar 2021 15:52:40 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Cc: linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: -Walign-mismatch in block/blk-mq.c
Message-ID: <20210310225240.4epj2mdmzt4vurr3@archlinux-ax161>
References: <20210310182307.zzcbi5w5jrmveld4@archlinux-ax161>
 <99cf90ea-81c0-e110-4815-dd1f7df36cb4@kernel.dk>
 <20210310203323.35w2q7tlnxe23ukg@Ryzen-9-3900X.localdomain>
 <e43dba61-8c74-757d-862d-99d23559cf50@kernel.dk>
 <20210310205250.hpe4wcgn4yh3rjqz@archlinux-ax161>
 <9834f7fc-f4d2-2230-7e1f-9b607ea782de@kernel.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9834f7fc-f4d2-2230-7e1f-9b607ea782de@kernel.dk>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=GSGF1V+n;       spf=pass
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

On Wed, Mar 10, 2021 at 02:03:56PM -0700, Jens Axboe wrote:
> On 3/10/21 1:52 PM, Nathan Chancellor wrote:
> > On Wed, Mar 10, 2021 at 01:40:25PM -0700, Jens Axboe wrote:
> >> On 3/10/21 1:33 PM, Nathan Chancellor wrote:
> >>> On Wed, Mar 10, 2021 at 01:21:52PM -0700, Jens Axboe wrote:
> >>>> On 3/10/21 11:23 AM, Nathan Chancellor wrote:
> >>>>> Hi Jens,
> >>>>>
> >>>>> There is a new clang warning added in the development branch,
> >>>>> -Walign-mismatch, which shows an instance in block/blk-mq.c:
> >>>>>
> >>>>> block/blk-mq.c:630:39: warning: passing 8-byte aligned argument to
> >>>>> 32-byte aligned parameter 2 of 'smp_call_function_single_async' may
> >>>>> result in an unaligned pointer access [-Walign-mismatch]
> >>>>>                 smp_call_function_single_async(cpu, &rq->csd);
> >>>>>                                                     ^
> >>>>> 1 warning generated.
> >>>>>
> >>>>> There appears to be some history here as I can see that this member was
> >>>>> purposefully unaligned in commit 4ccafe032005 ("block: unalign
> >>>>> call_single_data in struct request"). However, I later see a change in
> >>>>> commit 7c3fb70f0341 ("block: rearrange a few request fields for better
> >>>>> cache layout") that seems somewhat related. Is it possible to get back
> >>>>> the alignment by rearranging the structure again? This seems to be the
> >>>>> only solution for the warning aside from just outright disabling it,
> >>>>> which would be a shame since it seems like it could be useful for
> >>>>> architectures that cannot handle unaligned accesses well, unless I am
> >>>>> missing something obvious :)
> >>>>
> >>>> It should not be hard to ensure that alignment without re-introducing
> >>>> the bloat. Is there some background on why 32-byte alignment is
> >>>> required?
> >>>>
> >>>
> >>> This alignment requirement was introduced in commit 966a967116e6 ("smp:
> >>> Avoid using two cache lines for struct call_single_data") and it looks
> >>> like there was a thread between you and Peter Zijlstra that has some
> >>> more information on this:
> >>> https://lore.kernel.org/r/a9beb452-7344-9e2d-fc80-094d8f5a0394@kernel.dk/
> >>
> >> Ah now I remember - so it's not that it _needs_ to be 32-byte aligned,
> >> it's just a handy way to ensure that it doesn't straddle two cachelines.
> >> In fact, there's no real alignment concern, outside of performance
> >> reasons we don't want it touching two cachelines.
> >>
> >> So... what exactly is your concern? Just silencing that warning? Because
> > 
> > Yes, dealing with the warning in some way is my only motivation. My
> > apologies, I should have led with that. I had assumed that this would
> > potentially be an issue due to the warning's text and that rearranging
> > the structure might allow the alignment to be added back but if there is
> > not actually a problem, then the warning should be silenced in some way.
> 
> Right, that's what I was getting at, but I needed to page that context
> back in, it had long since been purged :-)
> 
> > I am not sure if there is a preferred way to silence it (CFLAGS_... or
> > some of the __diag() infrastructure in include/linux/compiler_types.h).
> 
> That's a good question, I'm not sure what the best approach here would
> be. Funnily enough, on my build, it just so happens to be 32-byte
> aligned anyway, but that's by mere chance.

As far as I can tell, there are two options.

1. Objectively smallest option is to just disable -Walign-mismatch for
   the whole translation unit. The benefit of this route is one small
   and simple patch. The downside is that if there are any more
   instances of this added in the future, they won't be caught. May or
   may not actually happen or be a big deal.

diff --git a/block/Makefile b/block/Makefile
index 8d841f5f986f..432d0329fb58 100644
--- a/block/Makefile
+++ b/block/Makefile
@@ -9,6 +9,7 @@ obj-$(CONFIG_BLOCK) := bio.o elevator.o blk-core.o blk-sysfs.o \
 			blk-lib.o blk-mq.o blk-mq-tag.o blk-stat.o \
 			blk-mq-sysfs.o blk-mq-cpumap.o blk-mq-sched.o ioctl.o \
 			genhd.o ioprio.o badblocks.o partitions/ blk-rq-qos.o
+CFLAGS_blk-mq.o := $(call cc-disable-warning, align-mismatch)
 
 obj-$(CONFIG_BOUNCE)		+= bounce.o
 obj-$(CONFIG_BLK_SCSI_REQUEST)	+= scsi_ioctl.o

2. Use the __diag() infrastructure, which would allow us to locally
   disable the warning while adding a comment. The benefit of this
   approach is that the warning is only disabled for the problematic
   line so other instances can be caught. The downside is there is a
   little churn as it will involve a patch for the initial __diag()
   support for clang (as it has not needed it yet) and a few more lines
   in block/blk-mq.c. Additionally, the reason for the warning can be
   documented (the comment can obviously be improved).

diff --git a/block/blk-mq.c b/block/blk-mq.c
index d4d7c1caa439..2781c04d06bc 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -627,7 +627,10 @@ static void blk_mq_complete_send_ipi(struct request *rq)
 	list = &per_cpu(blk_cpu_done, cpu);
 	if (llist_add(&rq->ipi_list, list)) {
 		INIT_CSD(&rq->csd, __blk_mq_complete_request_remote, rq);
+		__diag_push();
+		__diag_ignore(clang, 13, "-Walign-mismatch", "There is no issue with misalignment here");
 		smp_call_function_single_async(cpu, &rq->csd);
+		__diag_pop();
 	}
 }
 
diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 04c0a5a717f7..0a20fddc1c30 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -55,3 +55,25 @@
 #if __has_feature(shadow_call_stack)
 # define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
 #endif
+
+/*
+ *  * Turn individual warnings and errors on and off locally, depending
+ *   * on version.
+ *    */
+#define __diag_clang(version, severity, s) \
+		__diag_clang_ ## version(__diag_clang_ ## severity s)
+
+/* Severity used in pragma directives */
+#define __diag_clang_ignore	ignored
+#define __diag_clang_warn	warning
+#define __diag_clang_error	error
+
+#define __diag_str1(s)		#s
+#define __diag_str(s)		__diag_str1(s)
+#define __diag(s)		_Pragma(__diag_str(clang diagnostic s))
+
+#if CONFIG_CLANG_VERSION >= 130000
+#define __diag_clang_13(s)		__diag(s)
+#else
+#define __diag_clang_13(s)
+#endif
diff --git a/include/linux/compiler_types.h b/include/linux/compiler_types.h
index e5dd5a4ae946..a505d8a4302d 100644
--- a/include/linux/compiler_types.h
+++ b/include/linux/compiler_types.h
@@ -328,6 +328,10 @@ struct ftrace_likely_data {
 #define __diag(string)
 #endif
 
+#ifndef __diag_clang
+#define __diag_clang(version, severity, string)
+#endif
+
 #ifndef __diag_GCC
 #define __diag_GCC(version, severity, string)
 #endif

I would say the preference is ultimately up to the maintainer, unless my
fellow ClangBuiltLinux maintainers/contributors have any further
comments/objections.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210310225240.4epj2mdmzt4vurr3%40archlinux-ax161.
