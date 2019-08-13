Return-Path: <clang-built-linux+bncBDYJPJO25UGBBBN7ZTVAKGQEKDADOUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC5D8C228
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 22:37:26 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id k63sf16154770ywg.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 13:37:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565728645; cv=pass;
        d=google.com; s=arc-20160816;
        b=tcv1V5zmOcB+slUeeKwciihtKlSF+9FaALgJvRgjw+HrJmgxyUuPFC65k+0KZBmAjV
         XJD10yW52xYoj9nq1YX3COA4a7ojb1nqjNPOzLEx7/TPVc4vIO+ayM1VMthwXFHnt+8s
         scaAuRUXEatV06WOft6krfcN1HAZaUV2A9Xy8rMwJdp8us7ftS8uNBNenWmHg7OcxoEO
         cfYYBEyl9jh7DvlXmlHpxfg1ziaOBM6Pp+hhDCtlokO4B0bFp0+mgoG7qDNKIOLtpHjd
         qrnVLgo5gMm7fIOz7eaPjDZO8DmYDG33KffRd0yu2n7PBeAb0mEqbFaIHAsjeudxakaf
         p+zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=8DWseLw7ecxsTnZxhfB/QeF3Y4V67UvmqaqAgnyOK+I=;
        b=fH1COMBuzH5ZFbUDCtboOyjY11OCjeXxt0F1q55XA3t79RmqKtzvkKBqDRvvhbAlrR
         /tBip3g6qstfnBFx5P5s1zC1//mGySxii8USpOgfD1jPFMNtbLCzLSEM9JIAelqoGMm3
         oHd988TqHXG98z6HeAfBjvy314oJkfxVRXizYRzlOV9OeJU30DRWrvsciVx/GeVccNoi
         wMROHjNmoqqHKN2akUDn7a0YADoDMvr87lnuyVfL1gRL6fWXYVdugHgtYlNw6Trr+duu
         h/4FMUmcT88OAZXe5Zu7o4fJSe039r7FzsDPnpAwzE3KzCyrR99SXUE9c2To3fFOlQCd
         hy/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AyImookG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8DWseLw7ecxsTnZxhfB/QeF3Y4V67UvmqaqAgnyOK+I=;
        b=pYgydfcHqoaK8FvXN9Y3n9BvBddXjxxwvLxFP2jKV4R0CGUyPDt85CehHwch0jjtHI
         F3G8R2epvcInnzXaFtROxkUYmwTJ0xY0skonzEU/A4Mk18ca/bNMEwH+Wccw5nuFrZd6
         aMKoH19F4kN8l5ZMevMgLiwMmYk24rIGR8yPpv3tKcajk2uQMMhXRFHFFctYAKG1QUD2
         2B9adjVIOue3K8YZYe5zY5DWnoFY0lKCoD9XuklkXPCU5Pcc/E7MaptQo4GrSvecv0Us
         zIDwFOpV0XsCKik5sMtZY2YX56sqTtSNIR4iTeQq62IyZcYSuhgsyFMISW9nM+OvKZKw
         zwyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8DWseLw7ecxsTnZxhfB/QeF3Y4V67UvmqaqAgnyOK+I=;
        b=tUrRDsA9aLqn2HQXIUaSF8m91QnTJSXlmRE5WAqGT/6yF3Wcf0suuww16OIUQENQfl
         TX95ZK0VUT+OEn/ZBUWt9pi0Z5TP1dTqM5q6IP2lvruGEAjxBwfmOZQOqakmqfoOHZGI
         r3M3epDotZoEMelrSlfPckjPW9y6xyy8auRWDCy5htB6Li/Xy0m+83I2OJ3DS2sKomZL
         /5j0lBdp7XZ699Uh9mok8r3zReEl1yMhUWmVYzikWBuN7AEoQuic8ruWXmnEX+YcHBX8
         h9pwQZ2b7ARq1QP7xZio10jZ8FrxRdRP/Rbmcsv5ZL4TYXlxY7uY5VvU6VMTVDXrLFb9
         pG1Q==
X-Gm-Message-State: APjAAAU1Vd2FcW8fmXumRx3wjvmBANMvz7IyEzXznocaXdcibz1YCS+4
	hYvXg8rmanFEFjqe0MXKqK4=
X-Google-Smtp-Source: APXvYqyGkW1DB/bLvoVqVX8DJ81YegZZmGBQ4mKLdIkqM/t3ADN7XphjgumxAUH2oi5s42AjvnBcJQ==
X-Received: by 2002:a81:19c6:: with SMTP id 189mr27146587ywz.296.1565728645800;
        Tue, 13 Aug 2019 13:37:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ae98:: with SMTP id b24ls753608ybj.12.gmail; Tue, 13 Aug
 2019 13:37:25 -0700 (PDT)
X-Received: by 2002:a25:3242:: with SMTP id y63mr9571678yby.455.1565728645496;
        Tue, 13 Aug 2019 13:37:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565728645; cv=none;
        d=google.com; s=arc-20160816;
        b=xE4JSPWc6n7rz7KNZ142o9VY/vuUmQW+N1PqfRST0TT07DGuJPk1j4YDj2dAPKZ9VW
         M+dBlS4Z8pAuWH0iqHGCx0aXU6ySFrkqVXgvo1n8fzzSH+pfz/PvdxNYxeNqaET0rq84
         usnBdMYhYjJU/7MLB/RNUABk7lrO1u/W/+QS31Esf00Q+SdjnTJ94yRFoIh+feO9Jbtq
         Q4wycbY4THQzxPHiBPCa4IXNo6qDnHZhkkbqr+0TN2+3r09wg/UQw9ifcQQgOitto/xe
         zxmS41QTYLWluaIQYeVrWNNO0fqnvpFj8oPCS08qdZ+bQRPJ00ACJ+6sjSuv2PPoQBdf
         ydDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=O4bA+lMwAF10bVhJ27CrBxrtXthZNVrprWrQXBG1DjA=;
        b=AQpTs7QOqeL7JFXfneJkElaVci39QFcYGSKUvO6tVyaiyK8BDJVw/IjcJyN9NSxpuh
         q7T0px6HsFpXIVaAXPwaeIY9jQxyKbidfBRfzujiMP7nnb0zNlvTArDhV6U1cxkZfS/A
         L6eNhRWhWtYTtKZQhG3Jdnq9xQHICmWMcShmrCJGwFRKSmXozKbT7ef/lY1TgnRw9Sfw
         M6jcEByboxEW6l7Td8bMngef9ucked+U4n1IuLGuwJ+HJAEoJDcSChXO+XKmafSU+9nF
         9q9hf3RaiiEeafr3NGPyXft+BVdt8OlmCzUBb1hMEWWagM60YzljPVL+NkDEhfAyhsNy
         QppQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AyImookG;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d16si5947538ywg.5.2019.08.13.13.37.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 13:37:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id d1so19033804pgp.4
        for <clang-built-linux@googlegroups.com>; Tue, 13 Aug 2019 13:37:25 -0700 (PDT)
X-Received: by 2002:a63:61cd:: with SMTP id v196mr36483266pgb.263.1565728644215;
 Tue, 13 Aug 2019 13:37:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190813061014.45015-1-natechancellor@gmail.com> <20190813180929.22497-1-natechancellor@gmail.com>
In-Reply-To: <20190813180929.22497-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 13 Aug 2019 13:37:13 -0700
Message-ID: <CAKwvOdnOtR6s2KQVEZ2MRS1HE3W7L3B3ymsLmToJdzN_L2Nz-A@mail.gmail.com>
Subject: Re: [PATCH v2] soundwire: Make slave.o depend on ACPI and rename to acpi_slave.o
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Sanyog Kale <sanyog.r.kale@intel.com>, 
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, alsa-devel@alsa-project.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AyImookG;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Aug 13, 2019 at 11:12 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> clang warns when CONFIG_ACPI is unset:
>
> ../drivers/soundwire/slave.c:16:12: warning: unused function
> 'sdw_slave_add' [-Wunused-function]
> static int sdw_slave_add(struct sdw_bus *bus,
>            ^
> 1 warning generated.
>
> Before commit 8676b3ca4673 ("soundwire: fix regmap dependencies and
> align with other serial links"), this code would only be compiled when
> ACPI was set because it was only selected by SOUNDWIRE_INTEL, which
> depends on ACPI.
>
> Now, this code can be compiled without CONFIG_ACPI, which causes the
> above warning. The IS_ENABLED(CONFIG_ACPI) guard could be moved to avoid
> compiling the function; however, slave.c only contains three functions,
> two of which are static. Since slave.c is completetely dependent on
> ACPI, rename it to acpi_slave.c and only compile it when CONFIG_ACPI
> is set so sdw_acpi_find_slaves will actually be used. bus.h contains
> a stub for sdw_acpi_find_slaves so there will be no issues with an
> undefined function.
>
> This has been build tested with CONFIG_ACPI set and unset in combination
> with CONFIG_SOUNDWIRE unset, built in, and a module.
>
> Fixes: 8676b3ca4673 ("soundwire: fix regmap dependencies and align with other serial links")
> Link: https://github.com/ClangBuiltLinux/linux/issues/637
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Looks good, thanks Nathan.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> v1 -> v2:
>
> * Rename slave.o to acpi_slave.o
> * Reword commit message to reflect this
>
>  drivers/soundwire/Makefile                  | 6 +++++-
>  drivers/soundwire/{slave.c => acpi_slave.c} | 3 ---
>  2 files changed, 5 insertions(+), 4 deletions(-)
>  rename drivers/soundwire/{slave.c => acpi_slave.c} (98%)
>
> diff --git a/drivers/soundwire/Makefile b/drivers/soundwire/Makefile
> index 45b7e5001653..718d8dd0ac79 100644
> --- a/drivers/soundwire/Makefile
> +++ b/drivers/soundwire/Makefile
> @@ -4,9 +4,13 @@
>  #
>
>  #Bus Objs
> -soundwire-bus-objs := bus_type.o bus.o slave.o mipi_disco.o stream.o
> +soundwire-bus-objs := bus_type.o bus.o mipi_disco.o stream.o
>  obj-$(CONFIG_SOUNDWIRE) += soundwire-bus.o
>
> +ifdef CONFIG_ACPI
> +soundwire-bus-objs += acpi_slave.o
> +endif
> +
>  #Cadence Objs
>  soundwire-cadence-objs := cadence_master.o
>  obj-$(CONFIG_SOUNDWIRE_CADENCE) += soundwire-cadence.o
> diff --git a/drivers/soundwire/slave.c b/drivers/soundwire/acpi_slave.c
> similarity index 98%
> rename from drivers/soundwire/slave.c
> rename to drivers/soundwire/acpi_slave.c
> index f39a5815e25d..0dc188e6873b 100644
> --- a/drivers/soundwire/slave.c
> +++ b/drivers/soundwire/acpi_slave.c
> @@ -60,7 +60,6 @@ static int sdw_slave_add(struct sdw_bus *bus,
>         return ret;
>  }
>
> -#if IS_ENABLED(CONFIG_ACPI)
>  /*
>   * sdw_acpi_find_slaves() - Find Slave devices in Master ACPI node
>   * @bus: SDW bus instance
> @@ -110,5 +109,3 @@ int sdw_acpi_find_slaves(struct sdw_bus *bus)
>
>         return 0;
>  }
> -
> -#endif
> --
> 2.23.0.rc2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190813180929.22497-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnOtR6s2KQVEZ2MRS1HE3W7L3B3ymsLmToJdzN_L2Nz-A%40mail.gmail.com.
