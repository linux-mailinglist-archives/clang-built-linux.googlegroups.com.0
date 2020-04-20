Return-Path: <clang-built-linux+bncBC2ORX645YPRBUNE7D2AKGQEMJM5TZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C0E1B1845
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 23:21:22 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id g11sf11041919pgd.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 14:21:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587417681; cv=pass;
        d=google.com; s=arc-20160816;
        b=x2+azP0vhFUfp3sLc3aldu/ewwjoep189Ruhmby00CdqIa14rjl4agI6oXeoF9XpoX
         ioveKJUf7/0mZe0aUxIhIZH8AIFuV8acUCTn7mwbSLRGkqvhXVdUXNKYZ6o3ZrKOktrd
         ywJkTdtZNzT/g7rNic3o+Ik5tJX2T9upIjnKjCtmA1hvfh8Vnvt6/7JMo+WC9Oynz3YE
         hjUS2j8Sfj6KNdwow9ilcgeOdktLBh7tdT5Dw9e8RTYSbGP7zAtDpTcNnRjUsEXFuqbE
         QxpcwSp3aSklqo22ucM7LiHGwobBcv2w1nf1K93HeIFPekplZmgC0hxCXhe2PcXcff2H
         3sPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=NhJ1tzI855aQKyKFHtiFeS2An9NWI3mCQl3i19iF8bU=;
        b=VBeRdDTsEisqk7nP3GNRNEc/03FkhOVtOq5gqEZnDme2baPAnyJlVarU0Kgr41ilaz
         jk0mYtuaNtnAOtwGRKuCkeP4oXrneobq50eBVr7VZENl4vEerq7F/u8HhLGYuHDl+Ewp
         rOUpiAF2e/oo7i2IokSk8RFxqTCJvnp8AGDw7vD3990mqunRv8gR7N9R73duZFZkHsJX
         Kzq6iKiMhTmEwj4pGE9wMIuzwJZq5QfdRh2X0QAMGM8rJV0Iqv3snaKhJJo631t2uLdp
         gWpH6hB/jAooWqaYmkQBaW+AKgOIOnsfPKNjutuT9VqWBj3dSlTOVmz0tx4hS0jvhNBM
         Cu5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s2gZRkkK;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NhJ1tzI855aQKyKFHtiFeS2An9NWI3mCQl3i19iF8bU=;
        b=VYr5sSgvb02tm7VW3R2TuqfRLcBZN2DnWm8ynkNrnCKdSgiI89LA2Uoi2x+mllaf4t
         1ampBBOk744b6hElO2tTuQIRVJa9/a52NGnIeDAXQaYa/NwZe0J5hp0PlTFfkz5nWfHZ
         Aqkt2j7cFd7GxtIHwTsp/ttjmx/o1fiRpzdY9v8LKRx5luCUW7s8NpCdWJxZBgZsfWR3
         JKyDFtfVwmExL11NP3bUbm7nf/nCMAhjJHH/eT+W7rsxW5Asux9nU0fiwNMMvP32KoF1
         05rZtyrIdUZwuINDAwwcSpqrz3c5QY/0L2iYmd5hsZ8jnR9+Ui92uOYDIQDXTEPaSpsi
         5SBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NhJ1tzI855aQKyKFHtiFeS2An9NWI3mCQl3i19iF8bU=;
        b=ejhUJnVpIAKjMHEzw03Ni4plnffbbFQtCWC0jswFCe222Qom8tOWUreXqiBpU6ELrm
         MDyO9ecvPPrvh7e1JN5dA20Tm7ja9sHzSm7QeWBvMBx6TH9mIKBItXvP7z+MaaJ8/g1a
         mfXGQBEgJF4oFD2ivcnaoUb+4LNWmDdF31uTuGf5C4DHaGxAWfaMda5D3ug/5u1P8VcS
         XHNGanizUFj+g1Uw40YcbZK3sNGX0TEQoebWQ6ruO1b/lZNTv+0d1s6+KfwVm3ATfQiY
         5IDx9IQGmXSm28+aXOvmHVPVkqhEn+CF/rurnjN6d2yXie6rFX2RugCfFsZv/XmkcJxX
         AtpA==
X-Gm-Message-State: AGi0Pua8wJi+0DAlyhInp5UxMKySljEQ2X959by3v/Rb3EDxpnqzB1sK
	vbLsejiasalQl2nS1H8CJAQ=
X-Google-Smtp-Source: APiQypK9wkOiGR6e4Ujuaxt1UNI1LZQzFOGpRTBGvrMki1O3OICVjIlf2z8fFybCLXtZKAxWxpmDHg==
X-Received: by 2002:a17:90a:d3ca:: with SMTP id d10mr1717144pjw.24.1587417681489;
        Mon, 20 Apr 2020 14:21:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:834c:: with SMTP id z12ls11415786pln.5.gmail; Mon,
 20 Apr 2020 14:21:21 -0700 (PDT)
X-Received: by 2002:a17:90a:328f:: with SMTP id l15mr1650863pjb.77.1587417681044;
        Mon, 20 Apr 2020 14:21:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587417681; cv=none;
        d=google.com; s=arc-20160816;
        b=DMUg0Tqm3ArYmUEd285dusBAbnRF9pbXcKuUxcOUd7+l0BoakFJEcEVfWDToLgAvmQ
         UIUXfFinqQwcK56M75uISjpFrCygQWicWG5Jhs3qVWXv1c48vq1IB2YCNq7fdPRkH5IM
         MrxBJWxG7I2o6kATIqNbGq2Yb6xnQo1a1hEOfZfRatbWyL3kKgYILHqDBHgBcFBpNzY3
         dZS1UQhnlUH4OEIjhXr/aSrjkkV/o9QwpdnZEyqg6g3w8FO/teNljRpT2X9FLuy0FMt8
         G1Uk9V5AKPvDzcS8tMOzQa7fey/m9joOJ9ETCjQ9+xcz4F2Xn24PG7j9HpKajOonOJsq
         aekg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=uz86WyXpZD4aK01AvgFxQcTobO1DIrQdnvHxYZU+v1g=;
        b=amCzRZQGhw1VPwV8QGLfjr65di2g4eBpSrDY2wfEGbRoOPQbum++2q3Xenhe6I5eHM
         Z8M2DHKYJCgHNjcpn0jEOaY2MxzuSsXLkpgqxPKtBIlbnRMLzmJIZ7bFJewa/Pvn+ljZ
         MR5rCt67c4fBwJpDtirO6QHsHGg7QDKWW+z81M50Vv8ivTVveTMEB51c/fp+m61jbkiN
         8SaAuKuz6b00I6G7GKExHMIaGMXl7t6O4NL+lzMvh59HuNHgxQnLUeD3iBm1cjjsty4R
         uYdIa7Ced+iUKZoq4+g9aimss0YViVDe9RzNll/slIIBKC+5b+dbxS6B5C0AhZBRzxY6
         Q8iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s2gZRkkK;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id mm20si165224pjb.3.2020.04.20.14.21.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 14:21:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id r14so5579192pfg.2
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 14:21:21 -0700 (PDT)
X-Received: by 2002:a63:145a:: with SMTP id 26mr19419317pgu.238.1587417680555;
        Mon, 20 Apr 2020 14:21:20 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id 127sm423902pfw.72.2020.04.20.14.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 14:21:19 -0700 (PDT)
Date: Mon, 20 Apr 2020 14:21:14 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 02/12] scs: add accounting
Message-ID: <20200420212114.GA77284@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-3-samitolvanen@google.com>
 <20200420171753.GD24386@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200420171753.GD24386@willie-the-truck>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s2gZRkkK;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::444
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Mon, Apr 20, 2020 at 06:17:55PM +0100, Will Deacon wrote:
> > +#ifdef CONFIG_SHADOW_CALL_STACK
> > +		       nid, sum_zone_node_page_state(nid, NR_KERNEL_SCS_BYTES) / 1024,
> > +#endif
> 
> Why not just use KB everywhere instead of repeated division by 1024?

This was to correctly calculate memory usage with shadow stacks <1024
bytes. I don't think we need that anymore, so I'll change this to _KB in
the next version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200420212114.GA77284%40google.com.
