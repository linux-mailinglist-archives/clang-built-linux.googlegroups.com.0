Return-Path: <clang-built-linux+bncBD52JJ7JXILRBAFB7XUQKGQEK3PY2PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C2679763
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 22:01:05 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id x18sf39134747pfj.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 13:01:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564430464; cv=pass;
        d=google.com; s=arc-20160816;
        b=aOaOaWdoaql085Gb6yWT+JdBLkggojALCN+wGJh2A9dFTParm6d+QPZDWTEYTvm3ZZ
         LTq866Foe7fIThOEq6Ghwlqbs/UKDnINaku40nONKmKzUHpXfbhNrC4KhvZmYOpnSom/
         JrQrdp1dl2X25fwV7LlAlv/7I8i3DgqTDA3rJRL0SAnY3QTKDnq4t8g17crBwZd8NIk7
         RmLU3GEh4/2fM61dg+MrfLN1fgu3lIe2PgXmtyTUooj2TnJTddIqicKavrPlH9S52tU9
         IMyGYJWiV3MUey66UxpbrJpJ64CnfWzIsu0ImACcrPlOT+JPs+n4DIp3Lj1qgJn8mwss
         0/tA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=xOXua1k6/2SlFzfZiIQI9B7zhhob3qGfYmMUBz8ywYw=;
        b=1Gij8xPLJWLN0ZqXMBn4vYiw5+nRbwvXI0fd/C3r1VvHQXd+NH1dC5dYEBvLgjZPOK
         /fDqXgdRTMtvtnBde/GZTcgREqfHLKWyDsQoeF+CKou3SMaXkvISj/zUUwkVOJPSR61V
         U8YUFp/y4AVOLXjGueduhM8R7pYPhP6Bci321qUBvL4JppdhGc8EqSNQwrEMGunbSdYh
         NnJd5teiF23KdrbDw+VwCpxffs0tbHUdfvIwSVsyzZwHCtjQX2wwq1BnEqD399d3tO3h
         boIN6dFBLAzToJuCqcv7QQIEhclz/aKZBrfvOkao6+qwggDlH6lapdjlMKozaIKWyUKR
         Ke8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KTuQ2tCC;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xOXua1k6/2SlFzfZiIQI9B7zhhob3qGfYmMUBz8ywYw=;
        b=Go/z7ops8+woJFXsg/66KHN8oz0EQBxr+GGl/kP6HxMbi5ALWFUFexBXykeKgxaDEw
         Na1YPQw3FKZmaEbKt03SaK0hsYZWWOBUyfhAU4IrzC1E8bw89/MQHdruWOzqUROoC4AK
         nPb/WDpHQPASJbQjOVXAYKXoS+pJPJMuwCF7mppKp+xxH8fnfd3Iq3VwsQJgCPh7Zy2G
         9XuXOBcOPs2qQCRgSD2l2zRFNjsecDX1qGtQ5n2mRf6scRxmDHtvtqZXpiNhXwWMRt2O
         ggzfCAXZyTQzcMCrsajsD+xKaqvw0BWzAhEHmMHCew0IHExU98KDZXoAQGup3hYaXXyO
         6YXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xOXua1k6/2SlFzfZiIQI9B7zhhob3qGfYmMUBz8ywYw=;
        b=Iwi2dfZ7LTQaq38sxPcCzOpXMgSYk+AirerS4zaw6CgAbT/aISUNZ5QaSWKMFw6eSx
         1dUCiALzi9bUHQfpA8EaHHTY75hF7b+JC6zBZ4zIRvK9/jxe2UtfGqmoR3uuVpzSL6iS
         1PlurgkYHiCf62bpF6vzrjGthg2djxKED+LOrUhlGwqGj+onRzYfcZ2BU39ef4R906yR
         YUC9oP1OqxwzsbxFaTSy0rthN/Wj/F/b3gyJCw5qxMlpwtLR/zWZCi18rFCJZrHk3Com
         j6NPusvZUCtOWauF9Od4UenG6Ofm2aLEVDSBPuXZQytEtuPCrTgybA6uPDc6MeQBERsR
         FtVQ==
X-Gm-Message-State: APjAAAW4hbrao9p9xKknJf8eVvNW2Dg9lciHjDrLF3JHANRMdVI3YK8X
	xqR1dS+hiOLrKwL/ECMFmJI=
X-Google-Smtp-Source: APXvYqwICO/Hs9Zm8jqY7DOvsms0xw7wvUITS4v6hvdK5RZnKjhLnQ5nMmauNxjQq8RfuNKufjkI3g==
X-Received: by 2002:a17:90a:26e4:: with SMTP id m91mr113900733pje.93.1564430464485;
        Mon, 29 Jul 2019 13:01:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3fcf:: with SMTP id m198ls9264504pga.10.gmail; Mon, 29
 Jul 2019 13:01:04 -0700 (PDT)
X-Received: by 2002:a62:3883:: with SMTP id f125mr38557411pfa.258.1564430464188;
        Mon, 29 Jul 2019 13:01:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564430464; cv=none;
        d=google.com; s=arc-20160816;
        b=rwInGWZmFT8qPJTArHb9V2L2DrjIkvSudkmPX8PVtJyr0ZkubJBbqzS5S0bfftsYV+
         M+9hCG/hahgY8TwKpK8a06vyKQ9JmYAFnV0QBhx3pm0aGBR0BfbYwz4wwrzV4zdV+jLd
         RD2hhk7cQgJDP7NhH6VvMxRSvVP3K+BWQP8GsebIPXPAYIdyhEeq6ia91XbgvAxMGEK8
         MhYMSCECgjGB+PWpJsuQTWZgZcRN6V5a6cSUyJUsRj//CZoFmjnW5c3+WZ8rH7NqIbtD
         F5PR4K+zhZ5W/elBXNBlGiRq9vRi/6i+E/SGKcuXVpgHh46IIihs0BorHJL4YeqEi6bH
         +B/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nrAa1Owq+7NF6kk+ji/D7dPA87Icvc1pwfZh0czgUOU=;
        b=NYpyUiR5rIbstc/1XX9QZddmUe29Ryjil0XurnMcmIJm690BVFcaPkY0hoJOHVf6jf
         H8MF0asHOCN8tYikAOy1OZDJ3FlpxHhhJmC6dn8PDwx6/Pk8gWitqbSQGVFbxnhq3UCW
         LGQd2ViJFDh37f2LjRsf6U+LqH/8oWS5YNH/BgIysuf72t9my4rwgGgjkJLVAoMJ2mco
         rN3J6tnRtMjIsbd30pMLBpkskRPl7iZZQbpoJXjRZb3DHuOxCX6+JLv8FxRHazCw/5hB
         yHtewhzCqP41Uex/MOZPWMqsDzg93lcuhG4eRiSY5B/fixw8eOpctZAmdIOSRljHv/eq
         QIqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KTuQ2tCC;
       spf=pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::942 as permitted sender) smtp.mailfrom=pcc@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com. [2607:f8b0:4864:20::942])
        by gmr-mx.google.com with ESMTPS id o30si2028413pjb.0.2019.07.29.13.01.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 13:01:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::942 as permitted sender) client-ip=2607:f8b0:4864:20::942;
Received: by mail-ua1-x942.google.com with SMTP id o2so24537999uae.10
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 13:01:04 -0700 (PDT)
X-Received: by 2002:ab0:5922:: with SMTP id n31mr1842306uad.103.1564430462959;
 Mon, 29 Jul 2019 13:01:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190705080231.123522-1-pcc@google.com> <20190712193846.174893-1-pcc@google.com>
In-Reply-To: <20190712193846.174893-1-pcc@google.com>
From: "'Peter Collingbourne' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 29 Jul 2019 13:00:51 -0700
Message-ID: <CAMn1gO4KUq_Q39Rj3FWs6bG8BkCpGhS7gqYtBxi9EtrX=J9uTg@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: Add support for relocating the kernel with RELR relocations
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pcc@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KTuQ2tCC;       spf=pass
 (google.com: domain of pcc@google.com designates 2607:f8b0:4864:20::942 as
 permitted sender) smtp.mailfrom=pcc@google.com;       dmarc=pass (p=REJECT
 sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Peter Collingbourne <pcc@google.com>
Reply-To: Peter Collingbourne <pcc@google.com>
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

On Fri, Jul 12, 2019 at 12:39 PM Peter Collingbourne <pcc@google.com> wrote:
>
> RELR is a relocation packing format for relative relocations.
> The format is described in a generic-abi proposal:
> https://groups.google.com/d/topic/generic-abi/bX460iggiKg/discussion
>
> The LLD linker can be instructed to pack relocations in the RELR
> format by passing the flag --pack-dyn-relocs=relr.
>
> This patch adds a new config option, CONFIG_RELR. Enabling this option
> instructs the linker to pack vmlinux's relative relocations in the RELR
> format, and causes the kernel to apply the relocations at startup along
> with the RELA relocations. RELA relocations still need to be applied
> because the linker will emit RELA relative relocations if they are
> unrepresentable in the RELR format (i.e. address not a multiple of 2).
>
> Enabling CONFIG_RELR reduces the size of a defconfig kernel image
> with CONFIG_RANDOMIZE_BASE by 3.5MB/16% uncompressed, or 550KB/5%
> compressed (lz4).
>
> Signed-off-by: Peter Collingbourne <pcc@google.com>
> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes in v2:
> - Reverted change to RELA processing
> - Added more comments, as requested by Nick and Will
> - Added a feature test for NM and OBJCOPY
> - Made CONFIG_RELR=y the default if the tools support it

Ping.

Peter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMn1gO4KUq_Q39Rj3FWs6bG8BkCpGhS7gqYtBxi9EtrX%3DJ9uTg%40mail.gmail.com.
