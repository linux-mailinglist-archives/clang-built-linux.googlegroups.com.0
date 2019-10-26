Return-Path: <clang-built-linux+bncBDY3NC743AGBB7GZ2HWQKGQEWNNMH3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0610BE5DFE
	for <lists+clang-built-linux@lfdr.de>; Sat, 26 Oct 2019 17:57:50 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id g65sf5496484qkf.19
        for <lists+clang-built-linux@lfdr.de>; Sat, 26 Oct 2019 08:57:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572105468; cv=pass;
        d=google.com; s=arc-20160816;
        b=zs94P1jCIyyY/rZXd+Oavof73hlyXkyb07IIaLdinvYz1B2k0IwaWS2n409yagUj5v
         W7L0LQUWPah07FhgH5WMRY4JKoCPMVMshtqSy6QSB+UfxH2QxsCuZXTFL600/eChkQb2
         VxvTIQZ7av9jsy7mxxQGyAasxScUMU/UXyQjOsOK6eNEU82cZOltWGHAMUq52Agkzcrq
         hRS2e2hg+rOMxgVPol347F8cwStRdgFVdWNNv4FlYE7buVVkSXxL3fkZcg6K8C+wINhE
         nnRvchoOtMgfdfTHyb/wkLf+Hfh7f06dWDWd03L+cvSs1hhCgtRJJSH4IUcCqZgNhKnd
         PMOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=KivxkhHNN+aELMcSWdi4Dhr4D2R1Oa/ZiNKD1zsO9Vw=;
        b=K2wz5IlwMwBTRDhf/Y1859W7nNcTNrMuQ2zc/RM1GFpTAmr8GuEcEQ1yLbAtuDyh/K
         AwP2Brydbh4ECCuSgR3UGdB16zypMgF+H8ivZubyuDCzkX8Hq0TNbYpzZ6ygVqTxHvgq
         OF5wp6MFHkhSVB0Rhez0Eg2IzaxGXV+tYQczJjHXegzJsc14RAPCrnbgb74029Kq0TFD
         YaWztbVxtjHzCFEDO7rDfK8ORUl1QyOmkMp0JfnYIN4aG/yE+vb3/PFadVVrL1/IM2wV
         hQ+Swnf0+i7vax8aBcqQVhnrY4lLzphJoONVVe+8U67MY276abSXRX3szYc59fxe0YWE
         C14g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KivxkhHNN+aELMcSWdi4Dhr4D2R1Oa/ZiNKD1zsO9Vw=;
        b=EIn9CncyoDBhuEQCvqwItC+t5rO91DyTviOpd5yAlzgRNnKDAo2MoP0S9I3j/q1Hfi
         rpGJVUdGEkep/lKevUTHdnEGlod/ibaLLMs3m6sddyWNJ0+smWt4PIEoI6+E5ykKxjgu
         29Nekbs/D9n88nDVrCSDiIrk/VM+QJjdN1uKkJBVXaOje+KjkpdjHptT15Mc4b01Gd8o
         YieJSYhFPiZd1RxHYVCtyliRerfVJuhBLgQlTuJ4gHmLwVEfsDxS3tahxpK2dkz03tjQ
         A/YCwaNLWn8sRKs5vzfV2qjSeWlDUPDlvqjdA5UhcO+4HPgi5GOv/1ZqZfsGYuczjX1S
         440A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KivxkhHNN+aELMcSWdi4Dhr4D2R1Oa/ZiNKD1zsO9Vw=;
        b=QUfv6DQvu3vjCPrAqqT9TL0YOX/FZbdu0BvRXUFZ0bZKF7DNi0nQdNUm1VUFvhNCrL
         mqPH/fp5rDHNMVDc8ds49JA1qCP5sZ0bTc1G6Nwb6TKloscDA8/wbIp8rujKHTi0Yag/
         9L+9TFkZuA6D780viirtLLY5/cf4LqsQ4X4tcYSTBkzD5YSpW11segXDdpsal18/Cmrn
         fwtigkEKVV4dRj+gVCgKy91GZhiVZNWZN6Ralwp9KwoJM/PSggoI/dXAZpCcFtGIejda
         VaVcbY67z/3xmAr4zqqsbWVT4PxRbkGl996723rXUWiKo2Mm7IJunB1ew756yAvEh6J6
         apXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXt2Ky4wdlptjyRx2jzvMQtDN6B3HGbfkazdTK5EYj0bNVS8aYP
	mHREl3tHJm3hc/fNWWqlWVA=
X-Google-Smtp-Source: APXvYqyhT54332yPH7j/2OSjC8vTBwEiTLNk9ZsC0TIyTccJZWQxuQ0u42Nj6/ec3l/MHmwOM+85dg==
X-Received: by 2002:a0c:8884:: with SMTP id 4mr8979367qvn.248.1572105468733;
        Sat, 26 Oct 2019 08:57:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:12ba:: with SMTP id x26ls3504581qki.13.gmail; Sat,
 26 Oct 2019 08:57:48 -0700 (PDT)
X-Received: by 2002:a05:620a:129c:: with SMTP id w28mr8270929qki.436.1572105468279;
        Sat, 26 Oct 2019 08:57:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572105468; cv=none;
        d=google.com; s=arc-20160816;
        b=MSOjIYKNwbfuH4tKhwFGc+a8rDd/BuzKdynNejykk/FcoxAz73juELjyxKHEAA2mj+
         ZA1ANTHxHizH5xiHci31AjGPuXLn2ycod2UTjhSNAN0mjlcEPNb+/mU1QyNHSe6ZFqpm
         qAl53b25Ks6/9XkYs75oYArPTz6hZjEBFr3jYmOmA6sTUo9eqX/pb8k1TexVqdTEDQZZ
         IOyR9w45RFfnRR3fdqhveCNi6wC1g+dvSYAJruXyjLMzfePMkbDCkkX6q5nqKF/0kLDL
         hZJbetg9gEnErRHoovfWqxvArUUENNODKj3QHJc5mOu488cwe7WygTx/qnWfUOO1TUWl
         CbOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=W/+eYvMrE1Ly+gyZM6h6U8GZj2A8On9kfhcEgVevw0M=;
        b=Xo0d4ZQH7e2FTGFpWzpfX8rG0CDv29X8m+HNT4FXcfQE2jd3OIykxaGi/26PjeDH/p
         KwJXI1ETGQVK8Zx3Qnd2i5nPXGFs4UxR3NTH2Te78yva3uXks8x9nW1EScy+k6Mp76rp
         fJR/eH7Ao/Z+wiECVifMWiG8K2bGZQyEnH501crfwqFi0ipB9UXTScLnotOyu27VPO7Y
         +5k4k7SWxhEpky1wnz9tBavUaE1i+Odhkovf2OC0S9ePBaEwVvsHGmzrx4An9cTI5tE9
         Nl3jYdkshY0zBwF0bjKKtXX2gUiR927oUoIa/ZtORtBe+kYZy1Jn92ZdE0FkdSCEe2Aa
         F41w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0048.hostedemail.com. [216.40.44.48])
        by gmr-mx.google.com with ESMTPS id z41si250622qtj.1.2019.10.26.08.57.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 08:57:48 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.48 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.48;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id C1BD5100E7B40;
	Sat, 26 Oct 2019 15:57:47 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::::::::::::::::::,RULES_HIT:41:355:379:599:800:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1568:1593:1594:1711:1714:1730:1747:1777:1792:1981:2194:2199:2393:2559:2562:2828:2897:3138:3139:3140:3141:3142:3622:3867:4321:5007:6642:6742:7903:8660:10004:10400:10848:11026:11232:11658:11914:12043:12048:12297:12740:12760:12895:13069:13148:13230:13311:13357:13439:13848:14181:14659:14721:14819:15001:21080:21212:21451:21627:30054:30070:30074:30091,0,RBL:47.151.135.224:@perches.com:.lbl8.mailshell.net-62.8.0.100 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:27,LUA_SUMMARY:none
X-HE-Tag: sound93_43b2453be8601
X-Filterd-Recvd-Size: 2094
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Sat, 26 Oct 2019 15:57:45 +0000 (UTC)
Message-ID: <2c13c39acb55df5dbb0d40c806bb1d7dc4bde2ae.camel@perches.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
From: Joe Perches <joe@perches.com>
To: samitolvanen@google.com, Will Deacon <will@kernel.org>, Catalin Marinas
	 <catalin.marinas@arm.com>, Steven Rostedt <rostedt@goodmis.org>, Masami
	Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
 Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
 kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Sat, 26 Oct 2019 08:57:41 -0700
In-Reply-To: <20191024225132.13410-6-samitolvanen@google.com>
References: <20191018161033.261971-1-samitolvanen@google.com>
	 <20191024225132.13410-1-samitolvanen@google.com>
	 <20191024225132.13410-6-samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.48 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2019-10-24 at 15:51 -0700, samitolvanen@google.com wrote:
> This change adds generic support for Clang's Shadow Call Stack,
> which uses a shadow stack to protect return addresses from being
> overwritten by an attacker. Details are available here:
[]
> diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
[]
> @@ -42,3 +42,9 @@
>   * compilers, like ICC.
>   */
>  #define barrier() __asm__ __volatile__("" : : : "memory")
> +
> +#if __has_feature(shadow_call_stack)
> +# define __noscs	__attribute__((no_sanitize("shadow-call-stack")))

__no_sanitize__


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2c13c39acb55df5dbb0d40c806bb1d7dc4bde2ae.camel%40perches.com.
