Return-Path: <clang-built-linux+bncBDGIV3UHVAGBBBVUZ2AQMGQEQMKKLCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id E790F32155F
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 12:48:22 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id e11sf5893722wro.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 03:48:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613994502; cv=pass;
        d=google.com; s=arc-20160816;
        b=tKXN3We/uSHyaXsLcjJDVvjjlH1Db7HJ53TsyBdW7mYc1T6VD21lvKXOoV6LD22wsY
         jcGXh2VtuAhUcSvuQgZjsCRMStDdxgMOJSjxqVZqobnIuHDmStFkIEzehBjzqJKtoWcS
         cLCD+18HE2eLcQSWtNpqSaoIhBeMi8URkjhRQdIwSU+Pqzrs5NqQrAaZ1NJlV8quKaJW
         oK9BDdd/aXNh600jkybVMmx6uXPDr7h0xd/dxprCxYZAN9qlwsSnTBRMYRu90bsmQl6x
         oM4mAmRCpY4yO66NmOUJ5S2uzNdB6wdOVZb+z/ULkFHtQPoDKR1Rz9rzp5Jau7qz3aok
         +vtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=L+Sv98KgsCpX3WNfsAhf0mVznmCd5pu2kT7LFFUOd2s=;
        b=AHxOnP/hIR1CUktleQ1HDOHWyfXwrc4TTXfBZBgHOqmyqtamV9G98TaI4BHsLBbLmh
         IEC6riJ+2Cu0WZzrNFS7fk7p4WozcARCnYIzdGB6ce/KTmUfmreHd5rq/J+egzNVitCa
         wwF9itu3WNjpkvlbUp7rGQkevpkdVS2oI1S6DRNXUjgg74BckXzutChOR/6JpWXB7z1g
         5dbXanrswiEsqnG4SXqsYVGMwL0L5ecY8x6zHHMAlhj8/i+rO7/XKHt52GehRyu5Mk8C
         Rum462RrHoURZR6Cf765mR97eSklUf6nbi19YBexSFg7+dnwBYlr0lYE7QUfz67FIGUU
         SVVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cA+NQggr;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=L+Sv98KgsCpX3WNfsAhf0mVznmCd5pu2kT7LFFUOd2s=;
        b=IakV75qsF3LZox3LMqwUg0HuMCkqnw0+SmfiYyppHYLPO5UU23zZ/RXZXGT6DphbBu
         IKIkesLmnHv0WG+Egy/JwfRj3fAxtC6w3iY4Edwa1nd8V1FaS+K6Okpt/CL7kfgwWuZw
         JIHcCHAb58ru4Y56U3EyeZw7bqHVZKnQe5AP7gv7FrLM58GBq73OL3xwHEx3awl5Qdn7
         lWsN2uhLMH3/PnQs6ZjAfyuiJw3bzIHwEUtheIQwL84MEEZDVVxEU86AORSLi0lblGeR
         RI+Q4vUitzg6yF/YxDmdmdgpfy3NXs7IBKRn+18wIWHlTrFmz/Nh4T6W90rwIU7PiY9s
         X9tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L+Sv98KgsCpX3WNfsAhf0mVznmCd5pu2kT7LFFUOd2s=;
        b=Y5UMTssqlJE9kV4vAHaoNUEkNh/Usexygi6ty7X0DnjHL7TOA66L6RSQ+eSGIpSBSk
         wYDpuwOeMmw6WlcAYOkSDPiAAxq3r+6Hi83UCXKYLlFFo1UkObbGp5yurA4+tdpzZLqc
         gFCsCSTWDZuJVT3m45XvVMv6Y+j0zsDlwWkEwRhvQFJ1D2WX6YqyxFlxdvdti2SMX24H
         uT7f7tuGOjMc0FfBsSawKb32myYFnIagQk8yKQqkSgf8h9e2e+RMdtADaILaUteZIPUc
         CI6iY8CutDBc2IYyP0hEKaOsql9p1KMkfux5VbYuJaBUyNRouFj7tX83pAqgoVaURrvO
         4ZFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hWXlJPK4XtM6C9EDgfsPBY9iC2VDuBMz5KS3EaXARs/K6wJXV
	tGYHBwD5PKwkOhfVm2BBnZY=
X-Google-Smtp-Source: ABdhPJy+PM44rDLeG+4BXk7tGpebSIFoO5H4tJprNKUCfMsl2mlbtEnobvVrkGrSmtOwrWnbTMOCLw==
X-Received: by 2002:adf:d1cb:: with SMTP id b11mr21511833wrd.118.1613994502638;
        Mon, 22 Feb 2021 03:48:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f207:: with SMTP id p7ls1211227wro.0.gmail; Mon, 22 Feb
 2021 03:48:21 -0800 (PST)
X-Received: by 2002:adf:d08e:: with SMTP id y14mr19578703wrh.144.1613994501899;
        Mon, 22 Feb 2021 03:48:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613994501; cv=none;
        d=google.com; s=arc-20160816;
        b=FWU1TFCpAmYlE9KKzPBxrGN01CPacx+4dWrs/doofDbZ/HJa43TTiBzH/qCUVm865I
         wKFCcg2A+lpdMCLExZbhvMUDwE2mN1wnmjiXHi1UC8iVCtN7/gNlFZ0d1ZH26idxCAj6
         RBPKkqwf7n3j116ecRmVpUoY588gX6MaI6/yrznOXRfcVYl9RKpKkcnKW3oh3M1Lbgnm
         9zVkl0403HtFTFeib0GNOl0dlmtzHAX3MHtLw9D6IQDR48ehLje8SRL7IGaSpPivqeVy
         gpespaZC3r+aYWF8VoX9uKnQAJxmkvxrsH1P9ksNLDr7CMCU43RM0zi6h7A1uZ48cc35
         6X7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:dkim-signature:dkim-signature:date;
        bh=xb0n8WtCm3K7Eh2IRUGYt2jeo2fDP5lgGOVtsUIS9+M=;
        b=UNvk1+eyvQFejd8Csdy29ObgE2tJMwTfQYgCrxEAjR1piLg/yMQ9N25gH/EPOxiC+v
         imCfSzNWilqBRD4CSvzE5la50wXK47tKaLsgOcCdfGAou77EnT5rXL0LGtBxplAKcnVJ
         ONCZzy9YwsVRvN3Fp8EUQjY/FQFPLWej/KQTKjXZvph85Vtpq+ZgaY4ckAj0RS//p69u
         nE5R7xeS4nl4SIinu77mpVSqzvKbB9O0rxw/rx3oYJZwwznpA/NOdm9qmo0KJrnRsHZU
         HwltqY6XRENPx+xngyXBxAu6wxK5/fS8AIlGQ620NQovtzak0MmonQXNHQqL6pqXpCdt
         dqIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cA+NQggr;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=bigeasy@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id z6si145653wmk.1.2021.02.22.03.48.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 03:48:21 -0800 (PST)
Received-SPF: pass (google.com: domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Date: Mon, 22 Feb 2021 12:48:20 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [linux-rt-devel:linux-5.11.y-rt-rebase 196/209]
 kernel/time/hrtimer.c:1995:6: warning: no previous prototype for function
 'cpu_chill'
Message-ID: <20210222114820.wlze5ilnwn6l7ivy@linutronix.de>
References: <202102202341.F0rD79kP-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202102202341.F0rD79kP-lkp@intel.com>
X-Original-Sender: bigeasy@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=cA+NQggr;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of bigeasy@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=bigeasy@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

On 2021-02-20 23:30:48 [+0800], kernel test robot wrote:
> >> kernel/time/hrtimer.c:1995:6: warning: no previous prototype for function 'cpu_chill' [-Wmissing-prototypes]
>    void cpu_chill(void)
>         ^
>    kernel/time/hrtimer.c:1995:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    void cpu_chill(void)
>    ^
>    static 
>    5 warnings generated.

fixed, thank you.

Sebastian

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210222114820.wlze5ilnwn6l7ivy%40linutronix.de.
