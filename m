Return-Path: <clang-built-linux+bncBCIO53XE7YHBBYHAUH4QKGQEQZNNRXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3422923AE02
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 22:15:30 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id u187sf189793vsb.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 13:15:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596485729; cv=pass;
        d=google.com; s=arc-20160816;
        b=olGo1Unm8MLejVuX9wMspRGQoNGcnu9p+oIY1lWiuKdJyi2uEctWXHBKNR7/TTGa0s
         gSDixJiS4gLPVVGm+XC1Gu4MPm0Jjs2mw4yP/6b+BMHt48FZu4J/ww5uSzgNSoejzDgQ
         +9V6RC2yPUXFWk0r1NVq8lKxcX4Rl76/nMVJfx/An00CoMinttjk0VyqgylsBL95mTfq
         J93y3NV6//eswV3FgGshYF4jHrdUJLBZjjPEfy4BZXpf5/2s5/Cjo7IsbVTj9p3Qy/Ps
         igqywnujJeieHhKCwSd+CH/7FO5DLAPQLfA/MpEUMavwLLo58a7+wCzyKskLKCiAleCl
         0WVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=tlP2M05J6fOPi2FcEVAjQGloCPKks7j5uju1+9gxcpM=;
        b=Husk+lFg1WN8Ph26eA28IvLXRP2zbFL9Q+0r0z2tyMI8U/hzvIlUGWJjSL9V2qimsh
         h+EuL0Wc2siBM4qNhjFtCDWMi6OrNqA3mfnxK/HsmMqW8Jq4Frr51p8F2PaY6qJJ3Y57
         i5CwErZhtGJLRkHZe9CvpSg5etyyeFunk0HB1Q6JCGWtcNopwZzsgYvw9+4CzGGy8B8f
         cWTFW0EIf2lDR9q9asgSMXn0Gq9pYkfcQNb+322ZoY/4vEeCAfXJU2F3YDlkcy15tPT1
         xlxv8CspDdj43Un6IM/uRZZJEkDp0m7WcZgXnKgWW12S+FXrqRODPfZDgp+SzDY6Cthw
         a/zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mb3JcqW+;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tlP2M05J6fOPi2FcEVAjQGloCPKks7j5uju1+9gxcpM=;
        b=d8HGChkl434fI8Uo4NrC6wQRYqXShha7q5d4izappo6OiMXaUz4MSWeNRfIO5Qw/Sd
         DGPXt5zamYz5myO26ATvfVmpQCgvLLPAxJWK0Bax+RFtAUQD7AKsFBygXF19d/+n4ur9
         FSXhmjUL3As/ZEFx+vwuQ9wiukWrWfuObeHVqXvU5YMBIcpT39mtzP+yAGGLg2RPDADa
         1fFPopR6MuG6vffi+OvJnpedPH6YbJf2BudBKtt5jQ3/fhdfWaHHwu0V0YyvmV//3beS
         VASwAxlKvpdiEgRjMsCXtViy23viu8y8mePbqomY0LVA2nYbOiTZbnrDWBuyA+2VAnlW
         H2Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tlP2M05J6fOPi2FcEVAjQGloCPKks7j5uju1+9gxcpM=;
        b=FR0YtIisqbLxp7cswQqgnrQ0cAuFK0I55rxKJnSI25jxJU8va3YFRSCUA32bQ3ZxFJ
         DUxSWqJOZpBeuXUGagMe36GKEtFabXoejuRkkDTj+CjiUgtXhxRBqOmT4a4xmPIuNpxz
         6eOoKMzblG2kAmtYpoPI8xVrYomuqnTijoFP58Ic6CUwtbp6orY9ZQUzwpIdmWEtv5z1
         WxzxMPNJf16IK0IBsRNHybcvrlUuJvBDUd9GSN90tTSyTYZm1+uUvEx9V6heTCyV+Cl4
         LKLCcKEZaWkR4+GqERBPCbSUpwzt4WWf5XUgb4BaDF6EN/5sX4HKqgFJiZv9hhWK3ify
         6UgQ==
X-Gm-Message-State: AOAM533lKezJzfXgboJx86gZOVV9E9DdBSY4hBjkhgAQa5cG20Md4VB0
	EKnVDAqXZABZa5izehj24OQ=
X-Google-Smtp-Source: ABdhPJwZt5af1pp60X06CjzsMKmBXe1mIuzkprlpK/AlggwqFT9Lq3Fd2hSzM3tmEOaECBwNtLWZ7A==
X-Received: by 2002:a1f:9651:: with SMTP id y78mr2699325vkd.5.1596485729189;
        Mon, 03 Aug 2020 13:15:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7f0b:: with SMTP id a11ls140681vsd.1.gmail; Mon, 03 Aug
 2020 13:15:28 -0700 (PDT)
X-Received: by 2002:a05:6102:243b:: with SMTP id l27mr13397905vsi.173.1596485728680;
        Mon, 03 Aug 2020 13:15:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596485728; cv=none;
        d=google.com; s=arc-20160816;
        b=kNQ3yDq4OfFXgHnFyGGpSvF6z1F0HhFIjLldaNmakbGXGe3z1SgY4dwY6gvQHjTdtQ
         mworUc1mEk9M3Put079ayvOOzHADgnD4BVATn+ZX8yZnKGcdAPAZWkxwWnV9StLKGMPA
         /2ikXoQkfInJ1/3QzlPBMFCdjH1j+Yvv5koHcvTRJbZ96r/6lYi74yKwpvgg/lmLfhkr
         2mTRE+eyTexdu8dpqGJFAcTRFCn7irtI0hiC+qaFI9qkL/JbEZV8A2EC44fS1UEW+tu1
         teNL8BL/opRYl5aqzMvReGwVJxd+Tkl/VCMWnZFxMfnPzbS8qe0/yUZBr4sAasajyeZa
         y0aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=wIzAc23M6SmVRHfzbQTJsd5meKdIF3mKB2ogEoSxK28=;
        b=AHWROoOEVq1tXbeH9cTSf8JtJs0LUketRyoHS/iZX+OHrRM7mRapEDjIhOBrdxCWNJ
         HeQoHLj7JI+4phGI4VEhr/WxT0xIZV9g0TbJdoWCCUu78UEXOGvsemEB8y1B9kAKk6Cy
         rvIGGACZHWGUaRyqXb85OmdjVlP/3xvfDrykXWkVBgn3wfyVThNU3WtJ4X6l6ICWV0oF
         unDQYx1zI28zOKqJTll9Dt9xoWCLH5kEv2AN2aK37jG7coA5KckgPq2n6Eks8qLPsKmO
         IJ2x1ouySGJCd/zdyBTE8DgR+nkrDK2RCZHNlBa7fRYKGwOL5k5ueD5r/sKLKMn9q1UX
         i5Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Mb3JcqW+;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id g19si748751uab.1.2020.08.03.13.15.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Aug 2020 13:15:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id h21so22855908qtp.11
        for <clang-built-linux@googlegroups.com>; Mon, 03 Aug 2020 13:15:28 -0700 (PDT)
X-Received: by 2002:aed:29a1:: with SMTP id o30mr19112481qtd.249.1596485728209;
        Mon, 03 Aug 2020 13:15:28 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id w20sm4846226qki.108.2020.08.03.13.15.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2020 13:15:27 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Mon, 3 Aug 2020 16:15:25 -0400
To: Andi Kleen <ak@linux.intel.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Kees Cook <keescook@chromium.org>,
	Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jian Cai <jiancai@google.com>,
	=?utf-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
	Luis Lozano <llozano@google.com>,
	Manoj Gupta <manojgupta@google.com>, stable@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>
Subject: Re: [PATCH v5 13/36] vmlinux.lds.h: add PGO and AutoFDO input
 sections
Message-ID: <20200803201525.GA1351390@rani.riverdale.lan>
References: <20200731230820.1742553-1-keescook@chromium.org>
 <20200731230820.1742553-14-keescook@chromium.org>
 <20200801035128.GB2800311@rani.riverdale.lan>
 <20200803190506.GE1299820@tassilo.jf.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200803190506.GE1299820@tassilo.jf.intel.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Mb3JcqW+;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Mon, Aug 03, 2020 at 12:05:06PM -0700, Andi Kleen wrote:
> > However, the history of their being together comes from
> > 
> >   9bebe9e5b0f3 ("kbuild: Fix .text.unlikely placement")
> > 
> > which seems to indicate there was some problem with having them separated out,
> > although I don't quite understand what the issue was from the commit message.
> 
> Separating it out is less efficient. Gives worse packing for the hot part
> if they are not aligned to 64byte boundaries, which they are usually not. 
> 
> It also improves packing of the cold part, but that probably doesn't matter.
> 
> -Andi

Why is that? Both .text and .text.hot have alignment of 2^4 (default
function alignment on x86) by default, so it doesn't seem like it should
matter for packing density.  Avoiding interspersing cold text among
regular/hot text seems like it should be a net win.

That old commit doesn't reference efficiency -- it says there was some
problem with matching when they were separated out, but there were no
wildcard section names back then.

commit 9bebe9e5b0f3109a14000df25308c2971f872605
Author: Andi Kleen <ak@linux.intel.com>
Date:   Sun Jul 19 18:01:19 2015 -0700

    kbuild: Fix .text.unlikely placement
    
    When building a kernel with .text.unlikely text the unlikely text for
    each translation unit was put next to the main .text code in the
    final vmlinux.
    
    The problem is that the linker doesn't allow more specific submatches
    of a section name in a different linker script statement after the
    main match.
    
    So we need to move them all into one line. With that change
    .text.unlikely is at the end of everything again.
    
    I also moved .text.hot into the same statement though, even though
    that's not strictly needed.
    
    Signed-off-by: Andi Kleen <ak@linux.intel.com>
    Signed-off-by: Michal Marek <mmarek@suse.com>

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index 8bd374d3cf21..1781e54ea6d3 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -412,12 +412,10 @@
  * during second ld run in second ld pass when generating System.map */
 #define TEXT_TEXT							\
 		ALIGN_FUNCTION();					\
-		*(.text.hot)						\
-		*(.text .text.fixup)					\
+		*(.text.hot .text .text.fixup .text.unlikely)		\
 		*(.ref.text)						\
 	MEM_KEEP(init.text)						\
 	MEM_KEEP(exit.text)						\
-		*(.text.unlikely)
 
 
 /* sched.text is aling to function alignment to secure we have same

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200803201525.GA1351390%40rani.riverdale.lan.
