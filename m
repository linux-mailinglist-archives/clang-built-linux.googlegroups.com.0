Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBQESXT5AKGQED4MB4SY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D2F25A32A
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 04:53:54 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id b14sf1635884pls.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 19:53:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599015233; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yr279sCdQvrLl2L4TTL2hcRaOo7TcabESa0N5LbUWWI1u1+uRGuPh+pNd7H4nQR6fr
         gcACqbRmmVLPeDlqAuR5OfY2uoql5G1ejIGeG2lKCmzPtggxc6q81TGw9xgPhShmpnM8
         5SBXMrEDQ/wxD9D0dkVTpe96nkA2F53aabFMJFhgUlW1gTtN1ESwFSjh0CqXrmLqIPGR
         9viQXS/aIdNs4FggFUf9CaixH7YxvbKhSdWfVnV58vCRYA11EPmkF7Nb3mNW52VmIHB8
         UB0fT7DCzt6/GH+3W2D7tIcun1X5bJCuA0YlxNhPh1jz9kOsAVPvE6XZDZ5d609QnIvS
         fd1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=dAvTNtrKZJL+0V5QtkiHPiBKO8ts3+4a06HG1z3t+HY=;
        b=Tf6a6n14KVXf//BAQHmrZuEBu/LFUeFG+7+2NoZljKy+NVkFFl9Sx4gvhK2EpXDiuJ
         JfdMh6ri8+bf6AI4wTqzJGZ/N82aSy8Wds/l3T8MhVrl2Rp11cTjybK9bGyKCwFN8CmE
         f4jkmxDR9arSspbntaVzUaezblY0+5RmbARk1v9MSzcwcI2y9VsOk77COAbMeYh2ih/z
         HXSI+aDzNx2996VP33Uj0QgqGOgw//4hi8A7+CW8xKUazh9uCK1uzQmno2Qn7H+rXgSj
         eemK8HMiO5oHYiQeu0rACusPJsjqfEKMlV18Ok5KvZLli3AgBn/sDTZJsu5phWz+5ELj
         j29w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kCu8hyTc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dAvTNtrKZJL+0V5QtkiHPiBKO8ts3+4a06HG1z3t+HY=;
        b=Y1ES0X92C9YLUe+PYoYa6Nd8JN9T6BWkHcgEuCjy4XfC6cirw8pmVcVZB3Hm2dD+Lq
         F2B/O7QOONV1R0/jwp5Hnl/L3DVmEnT5f4JNg+4fAQkEG+KHLzLymLHx9aau85c74Nqw
         qOiG1rgxSUyx8GxAgtAkt9UVhqyLfh0zkcsqrHcG8m0hn+XNm2b15d8HOyCpEzICK17m
         6lsf7C2ExJWoJrHt1mUtrQkk0MaVq/dlRUj9mU+XVyXjqLPTg6iSXNnZHJGZOJEjS1g6
         MYqGQOEPGXOymAVrY4PXB8kpb6kyc+mcBFsQXGO52h/W+VYUwgtpcYqnTgaV++COW1SO
         927g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dAvTNtrKZJL+0V5QtkiHPiBKO8ts3+4a06HG1z3t+HY=;
        b=gMc4PWQziqJkSPoFU1y5tNHECl//W8N1SD//KzNTyH3LE3Fd4xdJptxsJ9q1YfIoTV
         naWNFao1O6gYE6DjOf34bNe8DyaAS/Bn0JfPyXd9EtZKIzn/dCCjzeP0UXMtETERBUbo
         eT4egEkJLeEbFkct3j4OwHTYeuUgAcQ7fxLXXX4AuthcjB6QZx4649beUZKczrTaEdNP
         gbiM+YJYRtbNGBGHj8QAtYPwjkeBIYoYm6fAsFYtu1MrnxP04bGHD7xYeM1vTzwHUzUu
         8+Yfvaff81iP9aawThmLfEWlZSzcWjmBxO07MHV+b8SNiEY7Iqgy3Md0jQrgAz+X8/qO
         j/2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313zuI717RxyS8Azow5+CiBWpBW/cnngTNVhBQ2h+S+1we+/NuK
	ZW9n4Y4P+g5wpZ096Nh88HM=
X-Google-Smtp-Source: ABdhPJwuIyiJI/C92v/fMIpT5dGqOHrbaypWgnJnvRZrJr0vzA7WbCbJeTHh89IDCEoX7j1iGNWIcQ==
X-Received: by 2002:a17:902:b203:: with SMTP id t3mr262741plr.50.1599015232956;
        Tue, 01 Sep 2020 19:53:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:f158:: with SMTP id o24ls302260pgk.4.gmail; Tue, 01 Sep
 2020 19:53:52 -0700 (PDT)
X-Received: by 2002:a63:2a91:: with SMTP id q139mr199748pgq.391.1599015232524;
        Tue, 01 Sep 2020 19:53:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599015232; cv=none;
        d=google.com; s=arc-20160816;
        b=merRZtTwDDenyC/ThRsBCuUwcPlzr2hWxxLgv5G2ccxwfiZhoraGTX02P3+mUSEiJ/
         HthjG3vfNdYmxtZSUluH76SaDmhUdUE7JJ89Aqyk7GUYmNcNEjTUutoJqo0wqDoccBPf
         H0oUgn2TYx49ToGGYVCciO/MwTyJPx1j9JORhbOyJWKN1upbwDjzxt30QhVhKtpEtjEc
         gyFPx6xFjpQsojvvpuVXzu1oAfQdmYqHafYVhW46UD+omICWaP6TekBsmn16ugMLPhMx
         BVUtxfMN64stkVFWl+4K3AQkL0qQrnoPGQOLsF/vE3ZhxoQx4mz4JQ79qv6FanLhP8oh
         km6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XPZJbcEtwfQTjOb/c8yhPFEhILSdoB+KS72tNB8EcNI=;
        b=MxFKYaUwJVwidfnukM4GZlKlhFUcuTByumz+Wla5GMdnODu8h15lBCp48ng8CoZpxK
         CYOw9/VcbxnM2GDo8mmuLrLg7kgFc0I6MkXZ3KC7H6TlrzNECt9XYgvOkstqEAiAyKpB
         mVVzp1A2J6c7R5FC/1tRcArXbh8vyR0KDc+XOY1eXaXl6KYQHe1SfSWwliEE6IvXjm7z
         whg1x9swAdbY+9jfnXjsSeN/ms+MTNWYczFaDI71g+2fhk2zTNC+7F4styQYJNI5RqAs
         F5Jng5YRjpfhQPnzEoqtsne54y4vkeZRYouS/hVTZT+UjfQfkaK2OCuZ1PdJRrYdfpf6
         4+1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=kCu8hyTc;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id t13si167325plr.0.2020.09.01.19.53.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 19:53:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id l9so1577355plt.8
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 19:53:52 -0700 (PDT)
X-Received: by 2002:a17:902:b20e:: with SMTP id t14mr253940plr.58.1599015232244;
        Tue, 01 Sep 2020 19:53:52 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id g5sm3575074pfh.168.2020.09.01.19.53.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2020 19:53:50 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Borislav Petkov <bp@suse.de>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v7 3/5] arm/boot: Warn on orphan section placement
Date: Tue,  1 Sep 2020 19:53:45 -0700
Message-Id: <20200902025347.2504702-4-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200902025347.2504702-1-keescook@chromium.org>
References: <20200902025347.2504702-1-keescook@chromium.org>
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=kCu8hyTc;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly handled in the linker script.

With all sections now handled, enable orphan section warning.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm/boot/compressed/Makefile | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index b1147b7f2c8d..58028abd05d9 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -123,6 +123,8 @@ endif
 LDFLAGS_vmlinux += --no-undefined
 # Delete all temporary local symbols
 LDFLAGS_vmlinux += -X
+# Report orphan sections
+LDFLAGS_vmlinux += $(call ld-option, --orphan-handling=warn)
 # Next argument is a linker script
 LDFLAGS_vmlinux += -T
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902025347.2504702-4-keescook%40chromium.org.
