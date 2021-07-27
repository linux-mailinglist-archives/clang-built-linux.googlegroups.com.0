Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOFCQGEAMGQEAJNJWWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id E16F43D7DB5
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 20:32:25 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id g21-20020ab05fd50000b02902a6182fc181sf52413uaj.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 11:32:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627410745; cv=pass;
        d=google.com; s=arc-20160816;
        b=y0ZSyt4Re6/VYYblXZoGL0NkeTfmO17ElggLzCgtV8MkSa0ltxVA4asD1/AewV3T3L
         3W0CFKsPvWKKwWHaw65UR1SQdQW8kF8vHIyj/MfFsyLHsvW2a2U7UOE501WZa5wIY3xk
         BkHqox80pYp7+CbS9+/QUUS4fQGBhI86EZzqvNyjJ8Ne7dwL90Nl5J4/XwxC+Tj69hGr
         S+L0BC2o8Wpbwq8eRjFhKeTtmLZ94PSCuMRxDVxcLCEGGOfjd1ngCwWMhcpIc1DW43PC
         ZRDX5xXWkNG6XRMldoifRM3SF3f3N+4pfM8fVECqfPxV5E8BSwcOji/l1EdNqPiUFOTN
         jT2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=jI9hdzSMhGhmmIm7B316hR1ckXrRh3ktftsN6aGNCCs=;
        b=Ed/XLmUrR8tOIayPZt8ha7Ib0yNjz/JmNRefFk2KlcikrMo9+wt6ROauFlOlEvv+o+
         9fbqOikMNpFj30oZHc1kYTC8cEkPJrZuZkzTw7yqbBFsnr539ZsZ0xxm4gryCisgHrYo
         TMYHLrbPUz8YclQ8WoO69rQfKbF4N1Zo3zE2bywBcVkToNEScfky63Cx2tDrE++D2JRf
         uGQ7VPUFs2r31HiF7Iwyx4JvtNUtS4xqTU9u+8p/AygW9c4GsL8pQf+Y4Fa3GY+0Q3jz
         Su6TRcxS3A2ph0QHHXVMXEnUFI58KMN0hdK6v695mRjdGbnjrbNfhtV2c/akayTXROs+
         5hEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YL3cgO4C;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jI9hdzSMhGhmmIm7B316hR1ckXrRh3ktftsN6aGNCCs=;
        b=NGS1CSi/ZzN4nwF7UyTknOd4njsFGimHrsjzt5BFy894WwB/nWC41IT3ql6DoZjlDT
         nk9L0JSMwRQiuAYt0Twuz/sIIFlm2IQ4MX8nEcAPFM2/9ACmiZnWWPHmcM2/d81Nhf8y
         rpFwNWNH5tEncAacE44eS2z/0cBU36voIeQHPq2tBhB/i+c2t4TJLTuwdKSqqF8eVJvF
         4QyZgVidUc+6RDNsa40oib16Qcpj1HK7S59HA4VZWmGUq72wuqQp+tInbAwcB+jK5k+q
         cA5hXN0hAXUwEGxjigIhPN1yzh5R0Bkg9qFE9EBf5IbpRikPoyPflpuVxvNZvp3a1xG+
         H2sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jI9hdzSMhGhmmIm7B316hR1ckXrRh3ktftsN6aGNCCs=;
        b=gHIlYZAfPr8XzgAvSkIrur+3DCwyAY3pbDHOitJipBRV0oIlrEIKrW2yEWPRs4hKCO
         HIBIuwY8rWXX59w4DLrd3Xw8OXFDQxyBP8/N/joARSN//Y3vBq09NdU4UcJmmtUq2H2V
         wjZ9UFehAb/StAs8xpCcL1Pl/OB6G1zsU8Pv5w2BCwv2vP7TfSyZweOOaXt2Jm4X2hQo
         dxXywDICtfWWtyRw2Te6+oNHO/j49Zdyxi2IGSRg/0RbyTFyNAkI9xltpjglzj3gUCxb
         azsJp3oUK0O2pfCulFkrJFAt6J17FGyLPZSfbXR87qRw4b2y8uNW0izmh9FqFLdiy65a
         RXaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Q9fLcc9u/jMGDy2n4fytScNDMudDTD9vxvocefSWJnBsIqvVJ
	1fCjhnvmrXfXEdmYY4PTQfA=
X-Google-Smtp-Source: ABdhPJxb3ISEiVBsYTs00KygvqBFVV5ODItzzwbRcIQlrIllHhln5jo4D2HrCrCDijp4SnCWEtHQJw==
X-Received: by 2002:a67:ce81:: with SMTP id c1mr18273030vse.26.1627410744999;
        Tue, 27 Jul 2021 11:32:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7029:: with SMTP id u9ls425803ual.6.gmail; Tue, 27 Jul
 2021 11:32:24 -0700 (PDT)
X-Received: by 2002:ab0:4924:: with SMTP id z33mr15195661uac.50.1627410741870;
        Tue, 27 Jul 2021 11:32:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627410741; cv=none;
        d=google.com; s=arc-20160816;
        b=HfTrMjyZH7vmGokAUyiCfpMoR9fZiTr4ATWXJbjvDzh0KucD26FtVcUVw99elM3Tuo
         bmOQL3BXDkdis/z3z1lt+RpfKnQNB5XPiq0ddmsGZ3ZVRZHfjHv9OX5B4KNCuecgTzCR
         efzo9Z2GXIkiJK+yTAc5aTI/c9ffDPMZgtjP0QwtJUEUpX3mru4wi9CCdkpa0skrohof
         kpkxBc3XnZu+5VQS5NhxiV6Mg9nKVBj5BR3FQ2/hVL4wWn6lIlvgGXnDRRPQYRiGgEbZ
         YtojDmTvEHIXTo1b0Mqgrw9jrnDDyzKFqzIaB5o00vSFGlDJNWfUWc599+0+3olOHxsz
         0bCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=rkOLYyulImM6w4KMx9fafaU7R/yz5WdvFV+Ko+vT9Sg=;
        b=0f9GpM9OnNE5KTA8y1Z82TmEUgyuwWFgpsspvNQEZkKhHsvXCcwh5JoucoFu/qz7eY
         eiUUAy/O05IznozYbPzFizZWs4DbKajAdJEp9YqnsROmoSAKnAmQ8HHKwTd7c4v26Lvg
         tB1C6fklQD2Ciy9HraJzTqTB3jNnAlgS0PVnd7uKaH6G0LlfGHg4LcY8UIEBOq8dXp8O
         18ZqDYPqyiBmp9J95tesFL4L+g1JRhEz3vy5PD+374UC9c7yxz5cP/QSKANByt3sYIMh
         2KU95nTkR+9hF5MPt62aGQ8pn8Uouvm/LD3VBNW8CQO6mj/JHxHonhjKIeOpZIxVWtvo
         ElYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=YL3cgO4C;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x18si298585vsn.0.2021.07.27.11.32.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Jul 2021 11:32:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5642460F9D;
	Tue, 27 Jul 2021 18:32:20 +0000 (UTC)
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Nick Desaulniers <ndesaulniers@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Bill Wendling <morbo@google.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-toolchains@vger.kernel.org
References: <20210714091747.2814370-1-morbo@google.com>
 <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com>
 <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com>
 <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com>
 <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <0fcf5740-2e0f-4da7-be58-77822df54f81@kernel.org>
Date: Tue, 27 Jul 2021 11:32:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=YL3cgO4C;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 7/27/2021 10:39 AM, 'Nick Desaulniers' via Clang Built Linux wrote:
> Isn't -Wunused-but-set-variable enabled only for W=1 builds?

Maybe Bill's tree does not have commit 885480b08469 ("Makefile: Move 
-Wno-unused-but-set-variable out of GCC only block"), which disables the 
warning for clang just like GCC for regular builds?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0fcf5740-2e0f-4da7-be58-77822df54f81%40kernel.org.
