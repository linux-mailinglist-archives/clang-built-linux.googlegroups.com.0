Return-Path: <clang-built-linux+bncBC2ORX645YPRBX4YQL6AKGQEUUK6UVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D6F288E0D
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 18:14:24 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id g14sf4216089oov.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 09:14:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602260064; cv=pass;
        d=google.com; s=arc-20160816;
        b=bfX2xGxGXn+TTPNLXkNCkKjjxpdnWa5bp0tP3ipTsqE4JQ8crQ8CMbpyoIy54plBos
         jM2YLqK5zR92WFFXdahlkAHhfkWnyM1uUICSWFy0Rm82Y3Jn2Qx+0BZxRVKaAKNXyEeD
         c3/A9cTdRH3NRfh3HEfBZk1B9wxQzPmlWmTAmLGW2OnxaRXQp7QkOdJIDscqb3qDuvNK
         FG6xZ83NdF9aCB80cM1V/KU+hez/4RiNXr3u6bVHNA/d3iTGLpWN8GW/RRhCpWmDuXCd
         g8spvXFfB70JTRUL09xtOddcazrN7qfqu3p4hidXLJyDRbXdnug6YieY8s/7BHO0KJ6F
         Oe8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:sender
         :dkim-signature;
        bh=5lvNiLUvgXBwcypVfqe0IinBuNCg2zuSUailUiMAlR8=;
        b=zeedta8BS/DcH4gB+h9aoF7rX1gHsTLWJ/BxaDJ6NFACddew2f1X5C3ka86o/upshC
         midqDzAWaJXUJiydo2ENOdMxcgcOU4I7WL6YS29s0li+4BSiUKeg5woBXMFWLSax+Iq1
         ZNcbaI5RgD+9yklhm+M2kUyH+KrZ70DgNZgvttJy1jWKX1/+aAGSgCXBIQ4k4qn3yR3I
         JqTDCb3a2/zhM9ee2mpc5/lJA2cd4H2GBcpRWTQKhpQ/QF00+FDRVJX73//8pHyTau0i
         x5AXL8NBUgW4+FcAIY4arCQWFD50iRHPREwZ3/T+keyAcy8wJ1h6cxpSRbJowlyHjyba
         C2Tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kWaosZKl;
       spf=pass (google.com: domain of 3xoyaxwwkahsrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3XoyAXwwKAHsrZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5lvNiLUvgXBwcypVfqe0IinBuNCg2zuSUailUiMAlR8=;
        b=BA5lSctqAfZFhVQ977zffPbk6liCVvS76/NTw8lBkQ3NgFMT6fyTd2G3hy2jx410YG
         Q7KHZJ9PkGpuT3NhcCKshl1qRYwoW6ntWpQf26hpXatoDh5Tg9vXXGG3d2cL486VLgZ8
         KfFrckNmBHU+t1oBelUtgn2DrV0cdZ8pm01fU0CDTXPFGK7MNBfqBq1GuArnsAz6rEYZ
         LMn5gh2P5+iAehdDrjDOlvz4VNtAZcHGAGgXHs3SmoayCu7Bh1R7rFMTrcqItQzmGqu+
         kcwuCUpkKKZpyuJMEJ6BWOZWuO08ilDSdjBMGeYZatN6VwiZZnD6xBfss2W7SC8F4fCo
         bQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5lvNiLUvgXBwcypVfqe0IinBuNCg2zuSUailUiMAlR8=;
        b=t2IgjB9wl/lGQPtiW0BAJTwWDhloBD2doGY46OxYScXClOco3uyXh4b+LkOEaj/dtW
         YWYrEuKvoSgqD+f5LHb8vgnHlVYVYMAPoQh+/B11IojvCWR9ZBp5H4IoOqdo4YVpuoz1
         HtApi4pMqegL6UdgO8g9xO8PW36XfFbTVVCKjpAVY8Q0H9ZwzAOunjEnJgMg9mBdpQ9C
         dHFQRjnOHbrXWGIUpSEGMm6VSrmwh2NVnxhblP7r91JtZ3MgEDZcL4PFSYp79om7eZMq
         DEemfhyNmfOBRHK4hHLxuu7gslEEu6SOJRkUZBinzrF0AmZpuaTGI4kyREuh5ZqE40/S
         1Fqg==
X-Gm-Message-State: AOAM532bunjWubCg1hFGt6iv8BGaaurMJwpRMaEQM74WmaIMXxwDo7RF
	UvhgFR9jU8MD8Uj/aimmFJw=
X-Google-Smtp-Source: ABdhPJzjiZ6qwfxvInM/NaBuIgdBEYKKIslaxHYk/EYimmBZWMC0e6OylOHjdS/+ptY4hLR3PHnOQQ==
X-Received: by 2002:a4a:751a:: with SMTP id j26mr9674804ooc.14.1602260063990;
        Fri, 09 Oct 2020 09:14:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:c38a:: with SMTP id t132ls2169153oif.4.gmail; Fri, 09
 Oct 2020 09:14:23 -0700 (PDT)
X-Received: by 2002:aca:fdd7:: with SMTP id b206mr3087677oii.8.1602260063549;
        Fri, 09 Oct 2020 09:14:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602260063; cv=none;
        d=google.com; s=arc-20160816;
        b=VC/wyHSd5pYlY6tRvCMLuGAplQrf8E0+pNDEKxAB993Do+Y4C6SpO1lTIGizJwevrr
         kR362LZFDQv9PPEM3x+EIbupTYhRWFqx/MpbWYR0ozoWqsATfLqP3kUgF0HzwkShgGVX
         /KPg5EOAsEVK+JPFEuGMpGb/SNoKp64WxQdKJ7DvTLeAOvm6U11s3rUCJ3cvouw2Ywl+
         qV7NSGIFma2VjwcgBcSmcZYF74AWQwXZfT8HGS98bpoXCcJUsZmKxmdFlyz6ZHZptsXG
         ldaywsntOq4ud/ghKKKPF/hOvfKhGl0LJUHsMrhpswDDW8LR99hOeQlN1Nhi9jGQV6gy
         r7aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:sender:dkim-signature;
        bh=BiHYmAAiH626N89XqxkZXfyE7gUyoYuU5gV65m3nGjQ=;
        b=pLsMTjxvoxZ5fhjgsjYfBySsfyX3gbOFFezbcDxKzdxxO9Wu9xyS8861PXKAV+GFKU
         Dv5POcimxQanJxNg42JC0jW6Gjfo/jGhOoAk8201s6T9+Gmjj2XSojoL6WM1cdSSkrA1
         w6ETQHaQVjcJhtzAaxFvSzjxUq/svm+0jzaAC8jYTNTc0h9CbVx+sOM3sy1hJzWczNlJ
         aG7ecf6b0Fp45310R+azTcS28msEn0hz2R3uPn43Rog5omxlhTLyghkWLQwCJMUdlcgD
         YfgsHsp/L8gD5qjPDbl1+bXP1ruwQVdjCZRaxdfiiwdP1D8Zp04tNqcnX0HfDRrP3FFO
         A5Lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kWaosZKl;
       spf=pass (google.com: domain of 3xoyaxwwkahsrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3XoyAXwwKAHsrZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id u15si1048732oth.1.2020.10.09.09.14.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Oct 2020 09:14:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3xoyaxwwkahsrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id c67so7063025pfb.23
        for <clang-built-linux@googlegroups.com>; Fri, 09 Oct 2020 09:14:23 -0700 (PDT)
Sender: "samitolvanen via sendgmr" <samitolvanen@samitolvanen1.mtv.corp.google.com>
X-Received: from samitolvanen1.mtv.corp.google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
 (user=samitolvanen job=sendgmr) by 2002:a17:90a:7c0c:: with SMTP id
 v12mr5366318pjf.71.1602260062781; Fri, 09 Oct 2020 09:14:22 -0700 (PDT)
Date: Fri,  9 Oct 2020 09:13:30 -0700
In-Reply-To: <20201009161338.657380-1-samitolvanen@google.com>
Message-Id: <20201009161338.657380-22-samitolvanen@google.com>
Mime-Version: 1.0
References: <20201009161338.657380-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.28.0.1011.ga647a8990f-goog
Subject: [PATCH v5 21/29] drivers/misc/lkdtm: disable LTO for rodata.o
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Steven Rostedt <rostedt@goodmis.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, x86@kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kWaosZKl;       spf=pass
 (google.com: domain of 3xoyaxwwkahsrzlhsnkuzmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3XoyAXwwKAHsrZlhsnkuZmdmfnnfkd.bnl@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
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

Disable LTO for rodata.o to allow objcopy to be used to
manipulate sections.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Acked-by: Kees Cook <keescook@chromium.org>
---
 drivers/misc/lkdtm/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/misc/lkdtm/Makefile b/drivers/misc/lkdtm/Makefile
index c70b3822013f..dd4c936d4d73 100644
--- a/drivers/misc/lkdtm/Makefile
+++ b/drivers/misc/lkdtm/Makefile
@@ -13,6 +13,7 @@ lkdtm-$(CONFIG_LKDTM)		+= cfi.o
 
 KASAN_SANITIZE_stackleak.o	:= n
 KCOV_INSTRUMENT_rodata.o	:= n
+CFLAGS_REMOVE_rodata.o		+= $(CC_FLAGS_LTO)
 
 OBJCOPYFLAGS :=
 OBJCOPYFLAGS_rodata_objcopy.o	:= \
-- 
2.28.0.1011.ga647a8990f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009161338.657380-22-samitolvanen%40google.com.
