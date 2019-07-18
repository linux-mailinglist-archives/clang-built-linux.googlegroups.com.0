Return-Path: <clang-built-linux+bncBDDNDZNP7UOBBBPCYDUQKGQEYCH3RDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAEB6CB0A
	for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 10:42:45 +0200 (CEST)
Received: by mail-lj1-x238.google.com with SMTP id j22sf5940164ljb.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 18 Jul 2019 01:42:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563439365; cv=pass;
        d=google.com; s=arc-20160816;
        b=u3WIc3VKTUvkqE891HGMDnxoOAvuvjJqk3Hcu7ETIKRSiZ4TRSDuQUVfdv3Kr2BZIM
         79rNL6XdxmrCqaTx1BZy0AdipEZD+2UZbBtdg0R02/55VRYK7NNeD4sG6iozFgotlWVm
         r0OZ4ukdtER5a15cydVu6qggiXZlxt8oSfjt7PR7m1Hd2wEOYazIzYRp6nlpAMkFDAwv
         tKYTR+1jstqSuPIVvKwLiIn4O4P/jowGRHWriAMSdeXyfhPJ45+IfYI25XCVQOpmiK9T
         eTlSyY8zt/yIv5dfXMv2XDIu2+ujQKj/5CEJ68O3A7Ry/FqEkM3lDayxGcwqnZ0cFF2Q
         K0sA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=uk0mgIHRy2BL0nGPzBEGbfr2I+ufPhoiiY75A0Mw0vo=;
        b=yeTOykWWab2qKoZ0yv2Ww+MrDDdzASYuYPxGgs0RfoDJKgyuf8/gNmgYUOnEpf4jab
         usRZFmbfDs1ThsXt2I3/oQV2TZRnKymoUDC5fHdduzRPLdA+aMgmVMvIyUX9abPQXvFk
         pLmSe91tL1l1uZiENoCTA+LrjmcQ0OvOmIF45PJy10O0KYycKea7rWSWUnUYKseleWUc
         3CaLdMMoG1o1R0+LoGNZfhFHXK5PqlaoH2d3BmlMBQyUySr4TdJUuPMkujizVNkMl5Kx
         0+xgrrqonNgjAoTnKHHap5gBGFoB9BxDAYPHzf7+1uwI2zXtMZhnASxuIEQnZsEIQvDs
         /ksA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) smtp.mailfrom=rjw@rjwysocki.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uk0mgIHRy2BL0nGPzBEGbfr2I+ufPhoiiY75A0Mw0vo=;
        b=Ui4263HVbG9GlObSf2feKypEKfMIC8M47ojUC9CAG/s9DzoxdiogBQXgVtTv7PV41w
         NZEuHQ9kfo+brYjxOZHMXSrvRJj6IfYNA8pPjf5PlJPQFSjvGTLdQdu/RgHPgRk1aHPV
         8qcH+sWD5JTrVvmQYQxdPBesBL7EqPlBA2hq7Wb+c1QEAwE1byHui5/SPrmY1NsdgUMg
         73TwQUOJaT/G+2uChuMNOx4S28Id9Gfe7cRSh1jXxQIzu0p3Ahg8Bo8OVKyrqJEqhWuT
         gGa3rtMXXrIPrEIwz74ohKg4CCxI3JYiRU/AWE3jbnkSOY/ZOH0btKQFG7a8EXqcbRyf
         kH/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uk0mgIHRy2BL0nGPzBEGbfr2I+ufPhoiiY75A0Mw0vo=;
        b=gqrghmXu9JAjJDAjJcQbKjfMhRUfqIwl6e4Pst1Z+ohkV7FZyK3d7XPPVaLktvYC9O
         CbmV/SwesFQEXLukIEzfnpGx2hqIZZWC/gVV98PW26J+oBXsozT0ny6eY431mVDuzt07
         lJNMmh+qR0sjfWLlLAXJMIari+JUKVFiUshkR2kOuFOLQYzFIA3o3tGaePuZawVASIj8
         uUwAW7vnb6pIGk5JQpJi0mqujIAREZutPGA3p0mLtLp6RDB5liKlyz0JOcMXHvYVnpqx
         edfMOEmE8Y6CRnQaYv9lqAMlkcy3yUj9VdlCo+W9hX8/GEL1NrEVYEJdB/xRDnIqOS7y
         EoRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU5NjeqreOAv2REXTUkpk4uh4J+kzSa0mT43LpfLwZZVh5K6MEc
	Xn2lRvGDS3ix8j45KhbhdZM=
X-Google-Smtp-Source: APXvYqyPMD4NoEDF4rOgEv/gLZVp5QzQzQIdn3lQjkQILMUqQMt7Dv4D4uiOE2JbsLOAOLQ6I6htRw==
X-Received: by 2002:a2e:87d0:: with SMTP id v16mr23849355ljj.24.1563439365322;
        Thu, 18 Jul 2019 01:42:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:67:: with SMTP id i7ls2227897lfo.4.gmail; Thu, 18
 Jul 2019 01:42:44 -0700 (PDT)
X-Received: by 2002:ac2:514f:: with SMTP id q15mr20720015lfd.145.1563439364854;
        Thu, 18 Jul 2019 01:42:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563439364; cv=none;
        d=google.com; s=arc-20160816;
        b=qze4iUsmoxggpv5YtAOpYdnuM4R01eDl9ksPAOaBHLfXppEm/DU7CSmhSysbbA69Ov
         SKFx/HQFSm+wEnflkBGIWXyzjjdHElNttlpSUerq6ZW57cNGFXOMBJWd5Q42vBtGMNdD
         EEZsiUVnQJU+V94T7Tqx7mS4CXUaUrLwnKDgtde0yFxUXS3rtyXp4UIWCkyFWT6VGkci
         z8Zgkt4LxyE4ERr23nrKr2WD8e29k2jtSPKUYxioJLqpboZUjTrBjmDeIUxLBmKR2doJ
         vSpHbGUfgFTYYsJ8LcPPkUzgMe2eQOxSwi/93KcraZUC4P5XeueHGhzwMIyKAqBBl3+h
         aq+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=QSJ4kA0q+qEB8KTD+M3JrnEsnRjJmtlezBva3YoBVwM=;
        b=tWvHreXZ6T9ENY4/NY09ifEuHd6VpttnqLN+fhZMzkLdWmkVqvO+A77UNoBz4NjCiJ
         vWwPzF0WgzrZH92t0wltvigQ8k6m/A5KZcWKWoj4qOrnTC2/A2W3BMQWMNBPdyyPbPVb
         3pMY9pr/d4ELEAB7AxTQRMXTwalqUxxdMzrJauXghmG5dKTOMEzQQZwiZ8ka8TDwy9ys
         RcmSvEuGMaxWgtrYJ0RPyBiL31pr8BFTlbeEPy405BBqny46CNvY+9doTr+L4CKpDjFr
         yhSBOLMuicD6Fdv7XSTqAfH3OdRe/flLmnEwO0lQ34qmcTfBBgZ1tLxqye0MFUVpdmJf
         pFJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) smtp.mailfrom=rjw@rjwysocki.net
Received: from cloudserver094114.home.pl (cloudserver094114.home.pl. [79.96.170.134])
        by gmr-mx.google.com with ESMTPS id q25si1349656lfp.0.2019.07.18.01.42.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 18 Jul 2019 01:42:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as permitted sender) client-ip=79.96.170.134;
Received: from 79.184.255.39.ipv4.supernova.orange.pl (79.184.255.39) (HELO kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.267)
 id 52ae64ba30307854; Thu, 18 Jul 2019 10:42:43 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Len Brown <lenb@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Hans de Goede <hdegoede@redhat.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Keith Busch <keith.busch@intel.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] acpi: fix false-positive -Wuninitialized warning
Date: Thu, 18 Jul 2019 10:42:43 +0200
Message-ID: <7785979.oluxICSiVJ@kreacher>
In-Reply-To: <20190712090148.36582-1-arnd@arndb.de>
References: <20190712090148.36582-1-arnd@arndb.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rjw@rjwysocki.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjw@rjwysocki.net designates 79.96.170.134 as
 permitted sender) smtp.mailfrom=rjw@rjwysocki.net
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

On Friday, July 12, 2019 11:01:21 AM CEST Arnd Bergmann wrote:
> clang gets confused by an uninitialized variable in what looks
> to it like a never executed code path:
> 
> arch/x86/kernel/acpi/boot.c:618:13: error: variable 'polarity' is uninitialized when used here [-Werror,-Wuninitialized]
>         polarity = polarity ? ACPI_ACTIVE_LOW : ACPI_ACTIVE_HIGH;
>                    ^~~~~~~~
> arch/x86/kernel/acpi/boot.c:606:32: note: initialize the variable 'polarity' to silence this warning
>         int rc, irq, trigger, polarity;
>                                       ^
>                                        = 0
> arch/x86/kernel/acpi/boot.c:617:12: error: variable 'trigger' is uninitialized when used here [-Werror,-Wuninitialized]
>         trigger = trigger ? ACPI_LEVEL_SENSITIVE : ACPI_EDGE_SENSITIVE;
>                   ^~~~~~~
> arch/x86/kernel/acpi/boot.c:606:22: note: initialize the variable 'trigger' to silence this warning
>         int rc, irq, trigger, polarity;
>                             ^
>                              = 0
> 
> This is unfortunately a design decision in clang and won't be fixed.
> 
> Changing the acpi_get_override_irq() macro to an inline function
> reliably avoids the issue.
> 
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  include/linux/acpi.h | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
> index a95cce5e82e7..9426b9aaed86 100644
> --- a/include/linux/acpi.h
> +++ b/include/linux/acpi.h
> @@ -324,7 +324,10 @@ struct irq_domain *acpi_irq_create_hierarchy(unsigned int flags,
>  #ifdef CONFIG_X86_IO_APIC
>  extern int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity);
>  #else
> -#define acpi_get_override_irq(gsi, trigger, polarity) (-1)
> +static inline int acpi_get_override_irq(u32 gsi, int *trigger, int *polarity)
> +{
> +	return -1;
> +}
>  #endif
>  /*
>   * This function undoes the effect of one call to acpi_register_gsi().
> 

Applied, thanks!




-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7785979.oluxICSiVJ%40kreacher.
