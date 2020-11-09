Return-Path: <clang-built-linux+bncBCQZJVV3RQNBBDMUU36QKGQEICJKIFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 2911D2AC3CD
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 19:27:27 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id b139sf7240099pfb.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 10:27:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604946445; cv=pass;
        d=google.com; s=arc-20160816;
        b=z1/NEC//G8JZgfA5n/69MbSOIscFmru+grTm+rJ/f1ZLHsog29N2yhnoSUw+IOulM5
         1R9OWVNd2iAa3UfNWU0Mezd8k160WW3WgEtsjV/2gQCHiH7Pwqjk58w7RVYjIiIAq8D0
         bEZkyuyblikb5bFn91T1GqXXNJj+5YJ6PSBAAfGgBwBCphj+UkD1VJkzcCimyAfjw+dv
         /p78ZbufEZw+5rjagcvrFiHOlPegfvOmbFTVv+N/vMTgpu0xg7PJjl4YtMur9rwNmMbY
         rrVJL3KE0nSFHUxmwiRvxMdiRTas72rdgz1c48JUuHAkp2+HpPuH57P+LY4bBue5Sq/7
         7Dhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=hs3IJsfR8qpoNNLRH7gTYYIP1t04eKmjIxd1yK0zXrI=;
        b=nn7eYw0APAj6lxvdcXYnMMtTnTCXT0913MqFPfjM2V0CGpE6NlIFIKKhmYkptNC145
         q14Bl8HJx7JLokTLeDL9JVDz15KXPBiTpb3rVQ9XWiLSu5+zlIDF7mnarcJn3cQTWgyZ
         5PcBc4Cus/uN8r73mV4e5NAck6Q58rVcMs+HFvoM4WdYARcwOdON0Sm9XLeCs9iZKi3w
         7DowmBwJru6v6VZYLXuwXF9T6LjLdcyNYJfgv2pYhCJi4IFi66mQi8Z1PsQ9Y40DlTHH
         SAZSyk2i4pxh50/e/IDQoB9k53Y9d6Pmfai5QkBzMuTcei4SeI4roYdn2p6zAxwMFrWM
         OMDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.161.65 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hs3IJsfR8qpoNNLRH7gTYYIP1t04eKmjIxd1yK0zXrI=;
        b=NH2zOR25VA8ZCv8RR8hWvX0IzC4MJSml/p40gL53NeoTg5tWteAOR1Sgz9vLvNg7Sz
         IonXV89SHQx0Pc3x6U3hfcXGUZnZNhJANUMiek3HRB3jqo2LLc76aTfR0SSOi7zi51tf
         ebofbxHm0mCDoThv31VZnjlmBXIIxhmS7UUSVEWKleEzDdUi5ELicBcW0SSNjwJ60xKd
         3SnBOHQgHu0vbTOXyB9xWiJgIGnSVpsWk0JD16Ra8l4Rvh+wI539tcwp47h/dnhwD25G
         jiT+MgdONXBmA4hDU0W2zDiMX9ZjjrcTs0+qTW7LIQbbrG0sffoqtS2+4xLHkD6/7oti
         RpMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hs3IJsfR8qpoNNLRH7gTYYIP1t04eKmjIxd1yK0zXrI=;
        b=P5Dt8sCTEVSftWvyBdm5qa72vR1CZxmHqkjtLXGvUlZLluJumjiOWEWxn4QtrDHi0x
         Qo2bLjLBdT1lgRuoEd830rOsY41VqopkoIoldeoe+Dmh+sCmRGBYjR/sXHdNCNxHwNki
         rlD8Pm8Urg80JiHElaPVEoZbHDlwRgFWbmo7dJHj/wHyf27IKrMV//R/A+aq0xKBE5z2
         hi1g9OJZWMyfIM4jtCBan35Qy8IdAq5FM4XAZL1HFh3ImstDRpFu+ThmlezQ9UmXx4Ho
         dnLd+twl1JC2A0kP4x564XnPZwt+kvJau0TyTlaIhIcyIpcPbG2PRnGM1fNhJdtO503s
         EkZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533IngkJ6iyoyxX7MGQZ9lJ0wYW9fY/K79FfdmkDpYw3Vwk5nirP
	7R89i7TcpVdzofg/EVUIPsI=
X-Google-Smtp-Source: ABdhPJzZJEP0C+M2PZZh7nQacxaRFkh9Ng4cKdftSlkjGAmUyD+eN6OqyiX/33ERQ4fXw70U2dqUQw==
X-Received: by 2002:a17:902:361:b029:d7:cd0b:e6f2 with SMTP id 88-20020a1709020361b02900d7cd0be6f2mr10867706pld.77.1604946445213;
        Mon, 09 Nov 2020 10:27:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b20f:: with SMTP id t15ls4077957plr.3.gmail; Mon, 09
 Nov 2020 10:27:24 -0800 (PST)
X-Received: by 2002:a17:90a:ab08:: with SMTP id m8mr534610pjq.52.1604946444567;
        Mon, 09 Nov 2020 10:27:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604946444; cv=none;
        d=google.com; s=arc-20160816;
        b=Dse8Vc2VnbF2Fb0z4DQbmZlEMJZ11RUfCA4+KBz4d+57Nxy6UeYJuSsMu+dkxpsFfw
         fOrB6gEVdS3O585RrnynQbqbEO4NjrSwhqjQ8D4Z/OPyRqu9Qe6IxjdIWkmWcw+hlcV4
         8wdLWAMNHw4QB9CO7/YdosHjZ4eWV259w0aJb0oC/kWtnf8OX2mVkbalDNklzzPA6ilk
         HTpFLUHcNoOmCh6mjjxmmEPCxxj540NxY4GfhKUhZOMoKC5Jtt7sdR71KZBBIfZxuqvD
         Va3qdgUk/u/CdMjZneLxZI8SLZkTToglm1lnMFMo7rSA+mkLc0jWnb3Eyk+RedI1QFQd
         GIhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=88lH12aP72k/JqqtafP44DWoY/B1GwcPDfqd9vj7KR8=;
        b=nJHQ25GA+sw7LY81h9t5WnxnIyFhHS1Mfb6ckboBra5CylAJjUtwQe8+dTaC1gLka3
         7BQ4JggeNhPPvTt1IZvGx3wlEK86Ap0Po8T86Fph9Tukav4w5d76RLBxo4REj7r7ENV7
         g2U4aq+ETbMN5IBOcu9J+P4ld7ZNYhluy5zPSf9tNnefxwaVgM1gAq6r1BBbgdBeCA7g
         QkbsN5cf1hGPjqeB9dlSHnXskEJ9DSG+Ckdw191RvNDryU+TpCtDSuPQialQSM/YKrNf
         sTCh2qA3tzRRU6jMCupgfeolsPgdcTK0JtkoYRHycEnFc7YjkqOSZNaG1P1iljVl6s8V
         b/Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.161.65 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-oo1-f65.google.com (mail-oo1-f65.google.com. [209.85.161.65])
        by gmr-mx.google.com with ESMTPS id d2si794552pfr.4.2020.11.09.10.27.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2020 10:27:24 -0800 (PST)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.161.65 as permitted sender) client-ip=209.85.161.65;
Received: by mail-oo1-f65.google.com with SMTP id n2so2435848ooo.8
        for <clang-built-linux@googlegroups.com>; Mon, 09 Nov 2020 10:27:24 -0800 (PST)
X-Received: by 2002:a4a:e80b:: with SMTP id b11mr10822224oob.1.1604946443729;
 Mon, 09 Nov 2020 10:27:23 -0800 (PST)
MIME-Version: 1.0
References: <CAMj1kXE=V96pJ7xK=9xMh-1Eph4FH7S4WDXDyJUH+82_Zn5DXA@mail.gmail.com>
 <20201107084939.3512560-1-ndesaulniers@google.com>
In-Reply-To: <20201107084939.3512560-1-ndesaulniers@google.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 9 Nov 2020 19:27:12 +0100
Message-ID: <CAJZ5v0iMGZ5Kj=o7Lo_yZNp8qk5BnpiJZNy4_-zdRJh1tFOSgQ@mail.gmail.com>
Subject: Re: [PATCH v2] ACPI: GED: fix -Wformat
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rafael@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjwysocki@gmail.com designates 209.85.161.65 as
 permitted sender) smtp.mailfrom=rjwysocki@gmail.com;       dmarc=fail (p=NONE
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

On Sat, Nov 7, 2020 at 9:49 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Clang is more aggressive about -Wformat warnings when the format flag
> specifies a type smaller than the parameter. It turns out that gsi is an
> int. Fixes:
>
> drivers/acpi/evged.c:105:48: warning: format specifies type 'unsigned
> char' but the argument has type 'unsigned int' [-Wformat]
> trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
>                                             ^~~
>
> Link: https://github.com/ClangBuiltLinux/linux/issues/378
> Fixes: ea6f3af4c5e6 ("ACPI: GED: add support for _Exx / _Lxx handler methods")
> Acked-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  drivers/acpi/evged.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/acpi/evged.c b/drivers/acpi/evged.c
> index b1a7f8d6965e..fe6b6792c8bb 100644
> --- a/drivers/acpi/evged.c
> +++ b/drivers/acpi/evged.c
> @@ -101,7 +101,7 @@ static acpi_status acpi_ged_request_interrupt(struct acpi_resource *ares,
>
>         switch (gsi) {
>         case 0 ... 255:
> -               sprintf(ev_name, "_%c%02hhX",
> +               sprintf(ev_name, "_%c%02X",
>                         trigger == ACPI_EDGE_SENSITIVE ? 'E' : 'L', gsi);
>
>                 if (ACPI_SUCCESS(acpi_get_handle(handle, ev_name, &evt_handle)))
> --

Applied as 5.10-rc material, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJZ5v0iMGZ5Kj%3Do7Lo_yZNp8qk5BnpiJZNy4_-zdRJh1tFOSgQ%40mail.gmail.com.
