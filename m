Return-Path: <clang-built-linux+bncBC2ORX645YPRBQ636LWQKGQENGTBXGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 346B8ECAFB
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:21 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id e104sf6841104ote.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646340; cv=pass;
        d=google.com; s=arc-20160816;
        b=VujwaoRpCiqBypCdiiOLBgPZwngfE83bCLtVeHszxXUGEDl605GTmj/EW/upsg3dfS
         YDXA7X1DcBhsMHot66HH2OTozBmmopWvShhTK1nSwfkxitAEkyAsU3ahYjhrYfTMzH2Z
         8kuy/pRRE6mwxlTyrbj2gA/508gjxA17sIWQnXdaUcdx2I5PIAx9CuD1IPmNmYTtDcl9
         hkJpf8xML9tmQ9xxV/nZaZY7p9sR87DKKPSU+Kn6kFZvKsPj9yoIF1+x+/Tk75vZBH8y
         c6G3tgnVGkvSK9Ddvh64wbPAmib7iq7dkq28iukyUfyBBGpuwEayd8Ye8uZ/aPRTx6wq
         TsxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=X9YcY++vy9YQaLVIy9dCRbUL0q8VKQvXpgatI8UmLdw=;
        b=dbobGjUla3gBVG9CHwA/PcJDDJit7jITlbWMkzuJLvmbtLVpYxmtrSjXrUi8chYDt1
         QVLier1ssgx0kTTRBhkwn2oVkpUszNGemtbF1jSSa7UDKFtFGWtgSn0+OMrvRAMmx58s
         3ltijTc5hjp32HzM26O6cztgwENsgnpeJr+gsrTg7AVPVIw9shztRaNg8C7I4SnaK9In
         3Cq2hdqUdUPYDT8VeQHkCsNA1yiDqOUR1OVy3hicXjIL9v/e6P2KY4CHknrwwyHRoJgr
         jSp7WKshUFNFkjH6JgUR7fXEfcva+txoj4M8CggP0P8Z8Xrgu4zOmnBwKGsBIcYXuyAl
         p7mA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oC92Xyk4;
       spf=pass (google.com: domain of 3wq28xqwkaauxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3wq28XQwKAAUxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X9YcY++vy9YQaLVIy9dCRbUL0q8VKQvXpgatI8UmLdw=;
        b=D3YuRfyQzRmFCHPnx1rwQ4maRbkedUCiYFRi5Na5oetdtV0giZ9cUBhrAX0ECddUeF
         mIRpfM88kwNptCgdTQQGzUov5APEuH8FG7sRNUCN3AzUa0xrHyITH41xvTtOvQiVirwJ
         01wu5kt4mIKRvNKwIfnWQyHBJD1UAFq9JgEMTNBgVoykDBWbT2roliRmNE2oHTLIsWrn
         gg/AlaTpbsRxyDZ4PnTxkig2kSjlGx0bXJ0/p1/9aYBjEhyc9lp4OAUskvW5unxS53x6
         KiMwVW8n0ZVzDW+jPqtpShtavdsmVVfyVGZo2Wl14eodLoXU5lkxDDcH/bFE8kCByqhl
         yi3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X9YcY++vy9YQaLVIy9dCRbUL0q8VKQvXpgatI8UmLdw=;
        b=iJMo+MjRlAqnl27lp7nGHuDb9wUddiH3/BV+JasDp2fgXeOPPE6YjGysfri6ictl8/
         RKZXgS2l2B5Xi76R3xNpIrrLEkj5DWDfrkA9W4VWVedFe1W4vJuqvaeOlIm2Z1CzaNgr
         UkLZOKnl/u2bEg4aacgZPpoIU+7iDhYi+pqSiu6eS5Xt3AMfNAF/V3rP4Wkghm1BXOJH
         FPoTvPkn5N62gGhUEQvovBtlDDeWj++nneDv41DGY/tZsn3Z+XEc+UBZxuLLd4mRWJqj
         4aEpCFJx8M7SD0YTBlAf9Gj16VZt+WtosyAX5oyx+/iNE6Erzs5skJ1+BKqSS46gAtdk
         5Slg==
X-Gm-Message-State: APjAAAXRdet3TvPz4nJtewbtSjRMHdAH9xAPo9epsu1W5zLDFunR5oQk
	AeGEbN+O9zeKX6RFMZhevMY=
X-Google-Smtp-Source: APXvYqwFOjt/pAlaKpebERjBQBWA42zUJaxBlP+NJrDkbe28V9PUGBrI2561Pk//XZsmll043+NSLw==
X-Received: by 2002:a9d:6357:: with SMTP id y23mr10330014otk.86.1572646339990;
        Fri, 01 Nov 2019 15:12:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7ac7:: with SMTP id m7ls1926384otn.4.gmail; Fri, 01 Nov
 2019 15:12:19 -0700 (PDT)
X-Received: by 2002:a9d:7d19:: with SMTP id v25mr10314829otn.250.1572646339684;
        Fri, 01 Nov 2019 15:12:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646339; cv=none;
        d=google.com; s=arc-20160816;
        b=e5sYA7QrBYC/nIegz5R8PjC3+0/NA/rfiCsAZtD+MS8YtbSwKJ29vAb6S2DTL8JX7O
         2+lGtxfVhL8jGSn2322LBlb0doSi2rfxL+UqU+9wNJVX+frsO0Dutlg9eEzsGw1nhbwd
         0pV2ZCzTGctBRjVqLJInTfBin3Oy5p6mGyaK/Sq9QitKYJo5eFpIbeNz2wc/W7XpSCGr
         J6jg3ns5DqNQ1sI8OqdWtjRObk81+04GsDf28vpK6JFZ1W88jQCvUEAHhh57Soy0fOG4
         mBRq4Jqytq6KVjRzIIrEyOYtkDdGcI43NC6KzvQVcwDqu123ocsAWTW+pZyk2GpiFRPI
         L5Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=YuceP/m4Sv7I7vrWsOPJ1pSb3CxvhwOwQ1OQoGSTS4o=;
        b=NYOkVFyBEJcEJZo+3j0aWrfagPywHYX3xRdlNhIqzP98FuTOxeBPCO2qO0b7mjyuf0
         9tjpLGd8Fq3ejY0TMSorzI24nToRLkgNKj7JSmlvJVdyJfNOC3Wax897uyK0Zuy3RgSk
         AUcjcQ6YuxeCa60b+KbjmiB2lBVhd7ttDTkZHEYjYliV+4BK2n6KfNtoSAiX/eHPo5X1
         fWozlWJYFNX2ZGWsw5oGF7VOZaV9tNqLmXFjT7pNYZfrsNGzTmO6TMcF6+cxtF/IMLR1
         j1rzG6KoICuvviEguXoq+tgDAK4AtAz8ZsyAQo9oyWsYuFOF/EkLzpzTqHdov14l+tlX
         EV1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oC92Xyk4;
       spf=pass (google.com: domain of 3wq28xqwkaauxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3wq28XQwKAAUxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x649.google.com (mail-pl1-x649.google.com. [2607:f8b0:4864:20::649])
        by gmr-mx.google.com with ESMTPS id m23si614693oic.1.2019.11.01.15.12.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3wq28xqwkaauxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::649 as permitted sender) client-ip=2607:f8b0:4864:20::649;
Received: by mail-pl1-x649.google.com with SMTP id k8so6838927pll.23
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:19 -0700 (PDT)
X-Received: by 2002:a63:2b8e:: with SMTP id r136mr2674046pgr.103.1572646338730;
 Fri, 01 Nov 2019 15:12:18 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:42 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-10-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 09/17] arm64: kprobes: fix kprobes without CONFIG_KRETPROBES
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oC92Xyk4;       spf=pass
 (google.com: domain of 3wq28xqwkaauxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::649 as permitted sender) smtp.mailfrom=3wq28XQwKAAUxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

This allows CONFIG_KRETPROBES to be disabled without disabling
kprobes entirely.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/probes/kprobes.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
index c4452827419b..98230ae979ca 100644
--- a/arch/arm64/kernel/probes/kprobes.c
+++ b/arch/arm64/kernel/probes/kprobes.c
@@ -551,6 +551,7 @@ void __kprobes __used *trampoline_probe_handler(struct pt_regs *regs)
 	return (void *)orig_ret_address;
 }
 
+#ifdef CONFIG_KRETPROBES
 void __kprobes arch_prepare_kretprobe(struct kretprobe_instance *ri,
 				      struct pt_regs *regs)
 {
@@ -564,6 +565,7 @@ int __kprobes arch_trampoline_kprobe(struct kprobe *p)
 {
 	return 0;
 }
+#endif
 
 int __init arch_init_kprobes(void)
 {
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-10-samitolvanen%40google.com.
