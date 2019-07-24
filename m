Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBXEX4LUQKGQEUX4FEXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B5DC7342D
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 18:48:29 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id t2sf24451206plo.10
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 09:48:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563986908; cv=pass;
        d=google.com; s=arc-20160816;
        b=NyxgupzRtzQVfiSPB09KD6I4WTw7BPbCyXow485lI+T+o9WUDwJJ8q6n3wrpGKgpo7
         /huXPqbPP6O8mYKP4JhfZXIo1a92dVDkdyimhBrhTC+zYqqiKArbUp6JB/ShOssYg0a4
         ytlm9zCce/PUqdVDa/vtZF9tUY9nE1I3C54qhrWWoAis0SIUNreBOB122TZCKX8FL9eA
         mXQNagXaMq1otyHC2KXSbd8qK3nsS3zp4vAVRLjCu22jPKbHLYQDA0Jp4mI/gk4C6qJ7
         Q+MpOLMWa1UatCadikWwLpNvDR/Hd6VgQ2Utlf6taPP98hDJ1usXITmv3pNetfifdox9
         kVlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=z/UYz0SXbvr9blsI8zAG3+G9vayxmS3N4pzk2Aljykw=;
        b=ab65H03PStS0gatLqWJfcfiOGXmky0iXS8SvysfYHnV3YYMnNz5IyGou8y1qJkArV7
         eY5lINCn61AKDriFMcwf/G7+4yVWI8lUM1kImlAcqLquWaSFROO5fqSixZxdhPG9mAI0
         ZSL8nCIt7c98eQxBVlklUvqsgtf8lHgUM8/zY+tSaQSqhP+sdEU3TyGPGIRwPqLDrN68
         NwK9+NihvxPLAflKqZZwgC/AiVQ9CFaUwEy/7ww13dstiZjCN2BR4VpfoR+kJbPV22Dg
         ouGZp5UbIjJWalxd+z27mR2DWJbCzoBpNP7jxc8x1EZnj/n8w3qAd9UWONRhtuSi7Cii
         N+tQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=s0ehXnmi;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=z/UYz0SXbvr9blsI8zAG3+G9vayxmS3N4pzk2Aljykw=;
        b=pCKGYboTtoGERmvRqmwOEi+do8ye5ciMecI/IlMaoUsbd6/RqjN9AWvBL9F8CWPzgW
         Iq3GBl+ABAiHJSNvhZmTz2UEf0Y8LCWdRWcwVnQxiypuOqhOPajHHX5f+dAF8MnjDdEw
         8EsAC6T3IJeeSwsojBugssXGE70FqJ3hmKVylyPKIMoFX9200wmxFrQ9TkzDfleGCEUE
         7mb0jL39og9l7nNfbsttKztWQJY2KXeb1pKJSKSr5KNylkwUAEM1eeLaxLcY7G17v5Z5
         sDUKCr6Vu0WPZA54RVIjLlSm2vl0IBnhLE6cersN+38FhyHYdpdBdRGmp2C8Wsh0Mz5J
         pZ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=z/UYz0SXbvr9blsI8zAG3+G9vayxmS3N4pzk2Aljykw=;
        b=L2h6uGGTHXAvsumvLCViNudRHqYm3VJPMHEHvqTQp1+RpK26OFvLCTPcJ1kvgCzhN0
         NCcSByX03ycn5wIkNC4ziYa86Kzm6f77RW7a1ljVpVJX+Uab2QA78FGJuFRi/TjqymVq
         oNxR01qebLS+hoZuCFIxzwwOPJ1TqzAYBQRzNpL/mj6nE4AjItLCqnFZO2JELJgfe4x3
         EaaMVnFWMpuqvWwGfhQmrD35GtApoGZqQpcGUQz1js/tB9iemaNNBF8ZgVMgTIcb3g9u
         tZlEi3Q4olpF0hb7stGQGfVMCw3V2gUV9RngHJiq8ez2t0pvBZC6q8TStiDKW4q8JCcL
         6jDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX4HFYLc3its6boV1RaAy91Mj0c9bo4xEH8w7TZ+yGsy6WicDbs
	zspvcv5aCOhAeLtHW94KFoE=
X-Google-Smtp-Source: APXvYqxmookMMLqqnfBQKCja4bbeb22qIyERuXPw9zaCfAgZn3e/uqtqMbhjr7MEE+jCJpj5y9drqQ==
X-Received: by 2002:aa7:8705:: with SMTP id b5mr12805208pfo.27.1563986908089;
        Wed, 24 Jul 2019 09:48:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:e444:: with SMTP id i4ls8344367pgk.13.gmail; Wed, 24 Jul
 2019 09:48:27 -0700 (PDT)
X-Received: by 2002:a63:5d45:: with SMTP id o5mr83355736pgm.40.1563986907698;
        Wed, 24 Jul 2019 09:48:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563986907; cv=none;
        d=google.com; s=arc-20160816;
        b=a74Q+VDWqM6nRBr1UVAhFpb7+7BWDYlMam7KGFqYok5/jPlP0U/5WD0/l5MwI2ckAa
         ZiVJ/SxyluovmXhOo/2R+y3/h+XoS0sb5QHygObJEEgMYEbgooMXSDm2zfOV6DPLbQG8
         5FI7UdhZ9oQ7eh/LWigGAgWCkDwvrtndNYeOB4ws8YJfgUcCshc6C3mPQpekGqTzI4eQ
         dPXqwT97UFLdhy6feARQYyG7cbJf/5TuLz+VuPNrGoZydw6stOx6qoPqvIBCQoZTDGXS
         p3U7TmxvSHC3nd3oNfynp8uRSeuU5qay0SjCyYpdBcBW5NnxCsknQ6vEn6GmdoBNmEl7
         A2/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=I/I/F1YjxAyAsOp42imqjb1kYs8ytmj9frM5VjUVPfE=;
        b=ft6NWA7sAkG0m+RU0JoGBBLvd8LqvAnbSZJx9kKwgAuxDa9BWNcdFt5aNtYPYOUqLo
         hhXILayX50hrfRIjN5hfYTR+KIQb77DrqztYWyl7gbrUVsOuEhQY5fPcO1anyTkoS9My
         XivUH6sDlBwSIU+okDaDJxxbv1IPv8YCsTSe5WLKvYa75llF1wOS/N+sSl/SemxDFLTh
         GRDJcmdXAFuAyC6voPN7iieGaAhHmbdoAV6l+8HPHmmHT+soKEfjC9Phz8y9utXAn03v
         svQJMqpQNi0BVk8gG1tiedi9/HqL0viqm4XvzAawfI3G+K9SIRjbx8XIwer8GExluSCh
         /vVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=s0ehXnmi;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id t35si2052196pjb.3.2019.07.24.09.48.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 09:48:27 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=hirez.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKRE-0003zz-5d; Wed, 24 Jul 2019 16:48:24 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id E881B20288388; Wed, 24 Jul 2019 18:48:21 +0200 (CEST)
Date: Wed, 24 Jul 2019 18:48:21 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: [PATCH] objtool: Improve UACCESS coverage
Message-ID: <20190724164821.GB31425@hirez.programming.kicks-ass.net>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble>
 <20190724074732.GJ3402@hirez.programming.kicks-ass.net>
 <20190724125525.kgybu3nnpvwlcz2c@treble>
 <20190724133516.GB31381@hirez.programming.kicks-ass.net>
 <20190724141040.GA31425@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190724141040.GA31425@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=s0ehXnmi;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jul 24, 2019 at 04:10:40PM +0200, Peter Zijlstra wrote:
> And that most certainly should trigger...
> 
> Let me gdb that objtool thing.

---
Subject: objtool: Improve UACCESS coverage

A clang build reported an (obvious) double CLAC while a GCC build did
not; it turns out we only re-visit instructions if the first visit was
with AC=0. If OTOH the first visit was with AC=1, we completely ignore
any subsequent visit, even when it has AC=0.

Fix this by using a visited mask, instead of boolean and (explicitly)
mark the AC state.

$ ./objtool check -b --no-fp --retpoline --uaccess ../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o
../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x22: redundant UACCESS disable
../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xea: (alt)
../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   .altinstr_replacement+0xffffffffffffffff: (branch)
../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xd9: (alt)
../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0xb2: (branch)
../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0x39: (branch)
../../defconfig-build/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool:   eb_copy_relocations.isra.34()+0x0: <=== (func)

Reported-by: Josh Poimboeuf <jpoimboe@redhat.com>
Reported-by: Thomas Gleixner <tglx@linutronix.de>
Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 tools/objtool/check.c | 7 ++++---
 tools/objtool/check.h | 3 ++-
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 5f26620f13f5..176f2f084060 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1946,6 +1946,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 	struct alternative *alt;
 	struct instruction *insn, *next_insn;
 	struct section *sec;
+	u8 visited;
 	int ret;
 
 	insn = first;
@@ -1972,12 +1973,12 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 			return 1;
 		}
 
+		visited = 1 << state.uaccess;
 		if (insn->visited) {
 			if (!insn->hint && !insn_state_match(insn, &state))
 				return 1;
 
-			/* If we were here with AC=0, but now have AC=1, go again */
-			if (insn->state.uaccess || !state.uaccess)
+			if (insn->visited & visited)
 				return 0;
 		}
 
@@ -2024,7 +2025,7 @@ static int validate_branch(struct objtool_file *file, struct symbol *func,
 		} else
 			insn->state = state;
 
-		insn->visited = true;
+		insn->visited |= visited;
 
 		if (!insn->ignore_alts) {
 			bool skip_orig = false;
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index b881fafcf55d..6d875ca6fce0 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -33,8 +33,9 @@ struct instruction {
 	unsigned int len;
 	enum insn_type type;
 	unsigned long immediate;
-	bool alt_group, visited, dead_end, ignore, hint, save, restore, ignore_alts;
+	bool alt_group, dead_end, ignore, hint, save, restore, ignore_alts;
 	bool retpoline_safe;
+	u8 visited;
 	struct symbol *call_dest;
 	struct instruction *jump_dest;
 	struct instruction *first_jump_src;

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724164821.GB31425%40hirez.programming.kicks-ass.net.
