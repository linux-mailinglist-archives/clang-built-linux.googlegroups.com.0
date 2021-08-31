Return-Path: <clang-built-linux+bncBDP5FWOTVEGRBVP7XCEQMGQERK32FLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1981D3FCA0E
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 16:42:30 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id q2-20020ad45ca2000000b00374fa0dbedfsf1718374qvh.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 07:42:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630420949; cv=pass;
        d=google.com; s=arc-20160816;
        b=ke+txDq47y+AbcpgouQyxgXZYGp/5YLkHiu0F5zQl86u5WHBxhGFoaVqnqIVhiaaVe
         vpce+t1fDnHPUqPHsQIpPFns2bAvLgYeKBP4mMrXvou77f8Bn/Cfx74hBPiH1iuQyx8b
         oiAA51ghOUfNs96eViANk6RQvfU2+URPEfjsPyNmSJKpQuagT5hJOY+RE/eEqovk2xUs
         6I7Lev3y5SctqtWHa/y22w3u/3zgZWK36JOF0gUu2awUynptwehVwi1nvXctUQ5KFv0I
         A+t4ugcsIpv4/kmyzZ8yeRfVIHHs/6rF2c4bN/3YfJgGf780TDkpZMQgB01hpGCjudyf
         SD7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=CydVTEaHkQ2dLQ0sZMhDWjTUJrLTXViLT+JbcbMUuh8=;
        b=mERMz3m9byau9AMj6XcfBKRCnTL3Z07wIjyl9xQnG2MM/q0++odyz/wbBo3TwOw9OI
         kz8Js9OKBXhCW4YZR86EBhgQi/rD4QOkxz/MvwrYQaLzEjTDXGM9Zk3p4uFVqUGnbKf+
         wHBWrze6gaN91CMqw7LsfxuogqHvu0Dt4cT1cSOeXRFPmJM3NAmkdn2U3nc3PMwlhv6H
         Qplzvbfmvt0haHuteFTPJUZSM8mT16tGld/aS+Oaa6zybDfoyRgAqzZ0hf4WNGS8HOxv
         fQlzhktwbtzROMAEdXCZZQ0gryrENFJ+ub7JzbBluXcM4NhmxODVsEMsGsmOUqAtyPMt
         qRHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CydVTEaHkQ2dLQ0sZMhDWjTUJrLTXViLT+JbcbMUuh8=;
        b=eBK5P5n+xHgE6EA5xnqGcYsFpQHj0MnDXufsaPji2uE0vB1mj6yMkiUyvpv0wDpCfa
         Jx3wO3PBlwm9FdmgR/N5W8RV2V1VOnJHcHuVtz+nUm+h2zco5QNok2n2pnT1BmF5N6Pi
         khqxEZ9LQjPC2HfMK8z37E9cFLV9qxnCit2lAwNDeMRilQb7k7GoEUR51PS1csgpcEf8
         NwXOXwOsscfHi+I8+h7yKxOkrvSliyJ5wvxCVva7cvnHTLxBKThKHqL4YFfxZbrieE4v
         Occ6VN+gxzSAAbc7KLEMZJpYEquW8lJk+0CZE9liO7cgG0e5IlazcnkhfLfaaCmhUmGs
         HfJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CydVTEaHkQ2dLQ0sZMhDWjTUJrLTXViLT+JbcbMUuh8=;
        b=bFic3mYSmfvuhVlt+/Bl+bOueGmycrunU+nJ2U2DLrbdTOHXeiEchXZXybci5g638B
         ozvDHdQfKGovfphCVyVXcLmBD0oBdjdnaMD4ib8G+2SpaTo6NXJxFJFOl2AwuX5Vx9hy
         SQ77MSVhO1YG9qMKf+rZ1bosL7UPjF/0mL0ipwWZkDzi3v1WQwGcY2t1jzlLV8IY/fJp
         g4ge1wTuJ4tQV5720g213a3VaNalcXMIiwEKOujF40SYPwzxX3LCHYNDhyhGOqpboMS5
         a2J1wIW4BlaJw3DkaREhqTE2AxTPRPTupbfwvK2WbnBAwS0DuGIkYTOZBAuSDBPXoiVO
         muAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QzO7GdHhbowdfIeHQ/LC9hdOGqTtnAOwutJllYgk+BaRYyOC0
	qV+cbOXK36nq/8pIQVi7mz8=
X-Google-Smtp-Source: ABdhPJy9QiO92YeZDycO4Mh4bkdJAQ3SJFxg0szvJ1EouUwn+/Rsf8DZFLI8wleM+V8JCSlp0Qq/xA==
X-Received: by 2002:ad4:4b30:: with SMTP id s16mr28905505qvw.61.1630420949241;
        Tue, 31 Aug 2021 07:42:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4eea:: with SMTP id dv10ls6335676qvb.9.gmail; Tue, 31
 Aug 2021 07:42:28 -0700 (PDT)
X-Received: by 2002:a0c:d801:: with SMTP id h1mr29242869qvj.60.1630420948790;
        Tue, 31 Aug 2021 07:42:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630420948; cv=none;
        d=google.com; s=arc-20160816;
        b=TLgTsizueL5VNGJW5xFcbudsD8QlE/CkNWbDD0pi7fnkwj5NP70RZYO6Vju2LfWCsa
         93IqGd4EZuXfNlqzKaNXxCddSSd2C65IANcrKTJDrlSdbQuYE8TcdMrhEHprIn1dbiwh
         JPZLIn2zpUQZJ/ZRsxZLDTECKV0kEJHs4TtG4dvMyosIC6HOsjihJZugEimTWnNskT+z
         cSjT/s1aHB3p1YxXcpIxIbJxkfd88K/qeT59mjYQsRnwefygnOxGD44L5EF4xyZYDkV8
         VCabLN4Er/X8XnThGc4s3jq0/Hk/Iqrjn8nVCqMjwnj4ADku8DBJjCzmVJTIEE0ZIhIk
         o0vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=X8ZRIgdbsX5vTUEhLyCn6dmsu0pOTkIAUZY1iWE+kNE=;
        b=q48gJfeonzadST/8clOrzYri6d5WuypNZNhe34Qhkx2E5hvcyz4OYyYDYDf1tDSQQE
         X5FWTDcCzwx2MhavBhEK2794VqML1u8G95wSHhNCG2+dFrX6w0h6Z+zmsiTkMxGZ9Fye
         L0ra0x0WAICfnLxkSzAKEk6tYk+WHaSfQ9SxxnNfHmlrr9IQDfpNKQ1BDbrGtB0swPZK
         m7D+Yu61RvW6BjWnCRvhAWcFRvF7wXdOOYEjsf96K0FMdzRJlaPr39MJ1NuFI1FfPl6F
         r5Nu0PuWeA554YOtVnp+S/Qh/1UzaLMCGQmpxNlr01dNZwjykrCff6my8uypXl1yCyGa
         mk+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id 6si1278907qkh.3.2021.08.31.07.42.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Aug 2021 07:42:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="279497220"
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="279497220"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2021 07:42:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,366,1620716400"; 
   d="scan'208";a="466478321"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
  by orsmga007.jf.intel.com with ESMTP; 31 Aug 2021 07:42:23 -0700
Received: from alobakin-mobl.ger.corp.intel.com (psmrokox-mobl.ger.corp.intel.com [10.213.6.58])
	by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id 17VEfmfg002209;
	Tue, 31 Aug 2021 15:42:20 +0100
From: Alexander Lobakin <alexandr.lobakin@intel.com>
To: linux-hardening@vger.kernel.org
Cc: "Kristen C Accardi" <kristen.c.accardi@intel.com>,
        Kristen Carlson Accardi <kristen@linux.intel.com>,
        Kees Cook <keescook@chromium.org>,
        Masahiro Yamada <masahiroy@kernel.org>,
        "H. Peter Anvin" <hpa@zytor.com>, Jessica Yu <jeyu@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Marios Pomonis <pomonis@google.com>,
        Sami Tolvanen <samitolvanen@google.com>,
        Tony Luck <tony.luck@intel.com>, Ard Biesheuvel <ardb@kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        Lukasz Czapnik <lukasz.czapnik@intel.com>,
        "Marta A Plantykow" <marta.a.plantykow@intel.com>,
        Michal Kubiak <michal.kubiak@intel.com>,
        Michal Swiatkowski <michal.swiatkowski@intel.com>,
        Alexander Lobakin <alexandr.lobakin@intel.com>,
        linux-kbuild@vger.kernel.org, linux-arch@vger.kernel.org,
        linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: [PATCH v6 kspp-next 16/22] livepatch: only match unique symbols when using fgkaslr
Date: Tue, 31 Aug 2021 16:41:08 +0200
Message-Id: <20210831144114.154-17-alexandr.lobakin@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210831144114.154-1-alexandr.lobakin@intel.com>
References: <20210831144114.154-1-alexandr.lobakin@intel.com>
MIME-Version: 1.0
X-Original-Sender: alexandr.lobakin@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of alexandr.lobakin@intel.com designates 134.134.136.31
 as permitted sender) smtp.mailfrom=alexandr.lobakin@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

From: Kristen Carlson Accardi <kristen@linux.intel.com>

If any type of function granular randomization is enabled, the sympos
algorithm will fail, as it will be impossible to resolve symbols when
there are duplicates using the previous symbol position.

Override the value of sympos to always be zero if fgkaslr is enabled for
either the core kernel or modules, forcing the algorithm
to require that only unique symbols are allowed to be patched.

Signed-off-by: Kristen Carlson Accardi <kristen@linux.intel.com>
Signed-off-by: Alexander Lobakin <alexandr.lobakin@intel.com>
---
 kernel/livepatch/core.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/kernel/livepatch/core.c b/kernel/livepatch/core.c
index 335d988bd811..852bbfa9da7b 100644
--- a/kernel/livepatch/core.c
+++ b/kernel/livepatch/core.c
@@ -169,6 +169,17 @@ static int klp_find_object_symbol(const char *objname, const char *name,
 	else
 		kallsyms_on_each_symbol(klp_find_callback, &args);
 
+	/*
+	 * If any type of function granular randomization is enabled, it
+	 * will be impossible to resolve symbols when there are duplicates
+	 * using the previous symbol position (i.e. sympos != 0). Override
+	 * the value of sympos to always be zero in this case. This will
+	 * force the algorithm to require that only unique symbols are
+	 * allowed to be patched.
+	 */
+	if (IS_ENABLED(CONFIG_FG_KASLR))
+		sympos = 0;
+
 	/*
 	 * Ensure an address was found. If sympos is 0, ensure symbol is unique;
 	 * otherwise ensure the symbol position count matches sympos.
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210831144114.154-17-alexandr.lobakin%40intel.com.
