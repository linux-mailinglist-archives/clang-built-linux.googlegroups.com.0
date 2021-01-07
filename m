Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBN4D337QKGQEEJCX7OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 454212EE7D4
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 22:48:40 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id cc1sf6619442qvb.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Jan 2021 13:48:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610056119; cv=pass;
        d=google.com; s=arc-20160816;
        b=bmkCatdNucfgjCaZuUYFKxs5kbCFjOqi0+2b/3EgF+By0kjsRNwbaF3YRlmp75dC/n
         Cjif2BAXhukLQftzZUowc5Ay9Vq9AgVSc7obkHbilBMZLFgfequxvxxnqNQcr+AqwFe7
         f5jasPwMXvAbq8Yja2xQwRl5utapS9+rb50txxCNw/t1+m7bAN+JtDxDHvfKQqNMasyp
         TSgEfu14IIUKzN/yUx/MCRRAbQzsBpJKZ7JRlOdoCDIwMS/TpSJ/Ifio1ndGEUGlukPK
         h+o1C7hDYKyaOWq9r+FQs+xkObL3luT9MjLxwHgDhxcS5E5NBptcCaptsAWDI+JX9Xfl
         OCvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Q9jf157yYm5nlzYqmaEgC7sn7UM+RmBskq+uW8Tq+CQ=;
        b=waCFUSRhIZaMzcmjC+UfwV+Kyx72dNyDrpm/IcGHLZq6ptEKwspvgY6n7Qd7X6CZS2
         5UmFa86ULQ/Es6PbswIQJemYr8pxMRQ2gNUrewVHvHg/5UVgp9GSQIPSvQH6aUU2h9aF
         MsHK+xAu4CSCVwyI6wsuhVu1UxfSwUDKKUCiNr9VF0bHwrBB1d2mvr8OBs9oC0pKJ5VU
         YTIByq9CFnuXCzd8z8XyanrajjYc8OaE1fmFsHqS3QxUNiAZCRLg9HOmP7q61mfkSgXc
         XQZrVbwGCdGSnNWsMDfTqw97/Xzi7A/VNPuQ6lqPJnDl3GI74OzEqfAj/blo7doyigKL
         Z0aQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y2XXqeUf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q9jf157yYm5nlzYqmaEgC7sn7UM+RmBskq+uW8Tq+CQ=;
        b=W82wQ480eBmWSb99J1giFPa2g1MwNsX0AYEtqu8LOAeJSazur9JpKwTrRh/35Ml89Y
         N1953Lku1ZIF8hsmPk24EuU7EbPdn8daLKJFtDAHAHyDafXcBmYULdNpO3boWzVb6Aod
         Ed82utxStmvu8dmPbxuXldGhVJvcVPMEwtgOK4RlSrIn2B7WCWNs1UfdjD0xi4QwkNmv
         HR8+SDHoKxdltvzXcp2ZUE4d+nwlFChomebxasq+OxCCHd/seZ4vOKh3DM9K/n2nbki3
         pir/WRnnqR7gE94xQwX16nRY3bznp/p/l+EXEBFO+losQjqpv5Yw/tUqMtKOL1QQgZ/k
         t/Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q9jf157yYm5nlzYqmaEgC7sn7UM+RmBskq+uW8Tq+CQ=;
        b=oIRZgZFm+nduEywN4DEaxI2L+KE74aQDZTA3pr2+H6rFXQz3Li37bLfMnnKJ93QGRd
         OtfWYsFAZ2NohWnKyx3o69u0X8ic/DRLxUeLPgi8kt5CmRidfDtPYBce0XPCdGWtV29G
         IezumeEUIoTAI8D/If2vGzvrQdD86Re9dH7zT8V66SNUSsMucAcrv+jlJFzoUnr91aFd
         utOMYBXNjve+hvL6ooEmINpnNjOphcUlQMavBgBv4ZvNIUJ6gSxr8egI0m0kS9caFTtn
         LdCIS2Oqz04EVo24HPmJGhtWmfrb0xXKY2df73uJRwHJ6KdHNSeum3R/J7Z6slRQ3cqu
         ZZfg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RBluWV62ns3PPTfM/bUNODAeW5WKFj6TR2Woi0JM70wf1RdfU
	UBgHvJ9TEzM/J6KtH7eVdao=
X-Google-Smtp-Source: ABdhPJwaJXmiDZD3paH5OJA/utjPCoFduYXvn4P+f8zjeWsZ5qfE/b4tGnzQLsPdJUyaPv+EiOCMRQ==
X-Received: by 2002:ac8:57c2:: with SMTP id w2mr662575qta.365.1610056119301;
        Thu, 07 Jan 2021 13:48:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ea19:: with SMTP id f25ls4492976qkg.7.gmail; Thu, 07 Jan
 2021 13:48:39 -0800 (PST)
X-Received: by 2002:a05:620a:4113:: with SMTP id j19mr1042611qko.301.1610056118984;
        Thu, 07 Jan 2021 13:48:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610056118; cv=none;
        d=google.com; s=arc-20160816;
        b=J+zA2a8dE2sTvppZpLTqDkV/+tjbfdqA38+/7SU6r/IZRZbtTzmja3grsNne2KbBoM
         LbjvUBeiC/mSRnTlebm1Xj2SkVuiWTPHNbt42wtYM31IttuCJtmRg4q+O7Ivvs5SywlV
         NguYuXliEUWOjkkRp0V07QaXNluI041NY866HWF4m8+L2r1IkXVgKPG/hKlR5OoTuNYu
         1+SKDL5OvBLWfm3ounzFS4lCENEeWQP8M3m0b/RMecsiK302ifIguXFwsYmn4TOYHKFL
         l2yl6QSQ76gRELKAnsm2aLovS4cTutIwhodjr6Cnc3BNFaDWC54eG8WNCCQddTaOJ4dd
         1vgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yHhv4+EFycAJKUbgSa0RmVqcL52Ac+/27NW7fknIfX4=;
        b=bB0wKmMB4BhazyEJBvx152insYZYFh+ysrDaz8G6yX2sbKCSa2LSmzNbw6ePN23S1l
         KN1PfpTO2tb3KCJParSZLOjL5H0jq6FtmAkDFS+vz5guInkLzC/oW08tuMQyOMu83LLR
         CddOP1Zw4PjQ8SaL7GY1VIP65R2jLUQ7ZTNSFW7+8KHjZIsD8uLcF+g9Yh1mzbRu+eVc
         xSotHx/b9Lww0HZXVt4pcYq+Kknte90J7hCrf9cO6Y4pcctga4gwJ0BrF4vwygzpASVE
         qcV6F5sKU0IdILFJtEHtz++rhwX5+vlUxuBFhgT8aPco7CZq3b8oOvErzdT9VFJYFIF4
         jidw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=Y2XXqeUf;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id t2si712157qkg.0.2021.01.07.13.48.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Jan 2021 13:48:38 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id j13so4871437pjz.3
        for <clang-built-linux@googlegroups.com>; Thu, 07 Jan 2021 13:48:38 -0800 (PST)
X-Received: by 2002:a17:90b:78d:: with SMTP id l13mr466183pjz.51.1610056118201;
        Thu, 07 Jan 2021 13:48:38 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id gk4sm2974766pjb.57.2021.01.07.13.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 13:48:37 -0800 (PST)
Date: Thu, 7 Jan 2021 13:48:36 -0800
From: Kees Cook <keescook@chromium.org>
To: Alexander Lobakin <alobakin@pm.me>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Arnd Bergmann <arnd@arndb.de>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Fangrui Song <maskray@google.com>,
	Huacai Chen <chenhuacai@kernel.org>,
	Pei Huang <huangpei@loongson.cn>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ingo Molnar <mingo@kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
	Corey Minyard <cminyard@mvista.com>, linux-mips@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org,
	stable@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v4 mips-next 3/7] MIPS: properly stop .eh_frame generation
Message-ID: <202101071348.4BA775344@keescook>
References: <20210107123331.354075-1-alobakin@pm.me>
 <20210107123428.354231-1-alobakin@pm.me>
 <20210107123428.354231-3-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210107123428.354231-3-alobakin@pm.me>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=Y2XXqeUf;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Thu, Jan 07, 2021 at 12:35:01PM +0000, Alexander Lobakin wrote:
> Commit 866b6a89c6d1 ("MIPS: Add DWARF unwinding to assembly") added
> -fno-asynchronous-unwind-tables to KBUILD_CFLAGS to prevent compiler
> from emitting .eh_frame symbols.
> However, as MIPS heavily uses CFI, that's not enough. Use the
> approach taken for x86 (as it also uses CFI) and explicitly put CFI
> symbols into the .debug_frame section (except for VDSO).
> This allows us to drop .eh_frame from DISCARDS as it's no longer
> being generated.
> 
> Fixes: 866b6a89c6d1 ("MIPS: Add DWARF unwinding to assembly")
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Alexander Lobakin <alobakin@pm.me>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101071348.4BA775344%40keescook.
