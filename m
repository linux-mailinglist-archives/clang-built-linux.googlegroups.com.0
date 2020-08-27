Return-Path: <clang-built-linux+bncBCT4VV5O2QKBBN42UD5AKGQEECXFGLQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 993B4254EFB
	for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 21:44:56 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id f21sf4950908pjq.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 27 Aug 2020 12:44:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598557495; cv=pass;
        d=google.com; s=arc-20160816;
        b=a2UbRK63GcjtpSMqidrgckeAGtuNXz2T6aIUij94kgMcWjHaEuqXXCjPGw5XB6Kwjy
         VnsqxdToOkRMv0Tbn0/AEny/4lFw3SD8umsZmxCn/Qf8PDBJSpuscu55AvUxZPIwtpDE
         WDY/Efi4m2r3+Nq6sp880+DcTm7YI7Nv8chiSVB8QGUfGTb0NYkYoYgoYPDD1i/cE7um
         jchmLU1rzQzSS+FrEeSHkE+mIUs64rg+JK+0MhJRwtObejYtICdY5DtMn4WrSx4SgIHr
         6qyOfpzA2JPlYfhtHa1fJ/2H1+sT/xHuVNW1rAFmpauOE0+V5Zu32dVgMaaiebojA9/b
         t8cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GpF+N9L0VftG5IGdFfICggTXdN8S/LGKt3Lv4iobrRc=;
        b=x7KKwY0X34mcFNSgfjIu2aj0StaLluSVasWvC3IQFhVAtIDdXBHB8C417aGaVQRNKr
         800u7aqBI2KCI0skqmpUXEjDfFYXGUaNGe7m0iekkGx1hHxkb6HaBJ9L+6/vHxe6uu9k
         qNphuQKa4hJQ9OIZUeOvrRqheJmcts2j3dB35iBqzLCcqwDblO5K7ihSUm6PA/qg5Tyi
         gqQ1OvAXIp8kK7sNFGbparwBrvHXJ2rXAwZAZZaIS2pDWX4HwmSu3aUm2mqS7PkxA4IT
         2uhtA6XCtqvvWoJXRjuzKA52H9U2Vocw5BNe2AZmmsqTAipAsxLV3I3RdZwtceA+46Ll
         8Nzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="k+f/FlyE";
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GpF+N9L0VftG5IGdFfICggTXdN8S/LGKt3Lv4iobrRc=;
        b=fINaQZs6e/5op21E7a3g78btgF1my3jQEtH6M+JPkZMdwwkubopS3SA9d+nLVm6gzk
         d7SY/+kdQObHKJhJ6riYGVzNCibh4wZNtzPIpf1nK9I2TaDG2DvTbUpCjFIzQtro8Uvh
         BGOW02hG1YY3jLpdNjoEygHgzl0jJ4JFS2jFATGS2u8NfMIwY84jULvgPAZ7BSYgyF4/
         X4FiQVIfVEFg5pyTTrmLfBND1kk0Wsc65vE9bxpFhFPFW57mHZLTYpO0R8m4mXhtZMtz
         e8ofT+laH7OnKWfzP1bOXWLQR1AKW6cVNgYnj6ZOtz8OhtUh/3i8E29a0uP68/mVjDrr
         IzyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GpF+N9L0VftG5IGdFfICggTXdN8S/LGKt3Lv4iobrRc=;
        b=sFqDa8aYVcqO5clUs1bGPuBEH+gqNRT7KJS5cNZOpIBKcY5UQu8bjKQumpBH4FScI6
         cZJr+ZkK0EEBJJ95pDgYCvSMjbAkmo+JyB3dvZ5wgMV4PSypAhO0eRHjvthySzeHM+aX
         zI3rtigB/OxJ2/stwbEiPhdRitjYWS/9bDrrGigdET50i4SyEa0p1eC3LK1QNyrd6hgA
         yYpRc5DI4mC6wCnCyC9I4vEUgEMs6/pkTADt/iYImxINS90V7Pz2vbGdfbgRoU2frONb
         REQxQH8d+6Q3XcwtKbbJfEEhcJHkpzG0/T+GVFFODdRon3glwkBh6DeyKhpuFC147Tsz
         9wrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GpF+N9L0VftG5IGdFfICggTXdN8S/LGKt3Lv4iobrRc=;
        b=LSDXuLa/zoLWJhZW1EBkMxMUQ7a0Rac4GcNT+PTOHw5S8iNJyI9HAcZ5Ny3ly3v7eE
         0sTOU3nLneFPemXD8oFKEXT0eQ5MUdeCLHS1Ha0hNA6+TTHDkiQUVejSkk0qXNwp9KLZ
         5NkqQwmdApdUtXvPw/Xuu95j3YC5349whUS4fEDmVPf8CYh3I775EvqrrhqMDLRPeWg9
         14Fgjlv/qurmruwbB4zKyTpjOXd8PFPq+UV3hhkp//sB2WrK6I3c78AavVVcXjSdGjL4
         75PuBHfSsHRH2qtFwFqrEq4XbRKYXgqdLPyh+LkhPKiTghCccIiH/++EKd+M70Gst+qV
         IqBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533RTeHIBCGZ20Mxd3hqjfQRtDS7ufsF2gGb+VG3gmqC13QxiFT1
	2QfJHJp5GTif6qElG/QttN4=
X-Google-Smtp-Source: ABdhPJzQvxEYbWbD0myzvJFJRow24xxyUcC5upa9kc9fHM73g42L7O80nbF9vPiYBPDAVBmciLbsyg==
X-Received: by 2002:a63:f546:: with SMTP id e6mr1713135pgk.7.1598557495326;
        Thu, 27 Aug 2020 12:44:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls1157147pgg.9.gmail; Thu, 27 Aug
 2020 12:44:54 -0700 (PDT)
X-Received: by 2002:aa7:8b0c:: with SMTP id f12mr17749590pfd.58.1598557494798;
        Thu, 27 Aug 2020 12:44:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598557494; cv=none;
        d=google.com; s=arc-20160816;
        b=tsjbVnMhE9oEQXTaxO7NtoizlE7nLP0nB6OhFNM3P/CUKmxnTH0+qz0r+C4Fb0e2QY
         4FMS6tAwiSoMdViSltHM/9C1xrlL6SZ8P7+ezgJjMvcDPZLFStQDsRBdzRLeSJnKLLlm
         SGWOFBS4XKMIr7wy9XHShhwu1yjWRZ50gQbu9RAT2UcwHxoc2EMQX2oraHAKJqBtNZUj
         LbIvsNgpUJrmgGlcl9foa3omh7L4C1RcX3LrFu1hTYgW/HLE1xFvRtDJwuDDkM+nX4/h
         fh3/HsMNNrr5w4gaUG2GKjjMfvcITvE81U0sIrNHUzIF5EQrOTleaIa1rkqIFqzHgopV
         GfhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=sNHVdsTXYC3wpdLaoIN+ttZuD9TkzPFpNA7QYNjRfwg=;
        b=In86EFojatnDk1wseiA3DKEcSWgmi6e2T62PPlIEJFiFrZQ45Np/zQyRlNyGmKVVkJ
         eY9FLHdeZD7PpyoDFFAQKGQDINmqbPGYuij9OckpXryW5OYfmgzynT0MG8D8TSYMBziF
         oEVgMml0q+0xO7gaZORubmP23SCNUuQebPzjUBXvQgFk9dP0XQCq2SkzWCbUoDXAKAzK
         +MhtUdGRDcP1dBIS7OWxE9GUDc0r7Gmv2kKTN14ed9zrFuA4eKhhJKOHdD5aOeDa9TUg
         wrOVaKb5+0enZGhw5C9Zkp3Sjjgay1809b/j32RB4Yn27OS16Z/vkumrU9QyCX8cf1l6
         VCBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="k+f/FlyE";
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id b11si179022pgg.0.2020.08.27.12.44.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Aug 2020 12:44:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id w186so4095747pgb.8
        for <clang-built-linux@googlegroups.com>; Thu, 27 Aug 2020 12:44:54 -0700 (PDT)
X-Received: by 2002:a17:902:b194:: with SMTP id s20mr17766208plr.321.1598557494459;
 Thu, 27 Aug 2020 12:44:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200827185829.30096-1-krzk@kernel.org> <20200827185829.30096-28-krzk@kernel.org>
In-Reply-To: <20200827185829.30096-28-krzk@kernel.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 27 Aug 2020 22:44:38 +0300
Message-ID: <CAHp75Ve5YgDNvtqFC8-zPgPQminR+57iWjGveaK-Ddxhj7FuWA@mail.gmail.com>
Subject: Re: [PATCH v3 27/27] Input: bu21029_ts - Use local 'client->dev'
 variable in probe()
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Hans de Goede <hdegoede@redhat.com>, Bastien Nocera <hadess@hadess.net>, Sangwon Jee <jeesw@melfas.com>, 
	Eugen Hristev <eugen.hristev@microchip.com>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-input <linux-input@vger.kernel.org>, 
	Platform Driver <platform-driver-x86@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="k+f/FlyE";       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 27, 2020 at 10:00 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> 'dev' is shorter and simpler than '&client->dev' and in few cases it
> allows to skip line wrapping. Probe function uses '&client->dev' a lot,
> so this improves readability slightly.
>

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>

> Suggested-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Changes since v2:
> 1. New patch
> ---
>  drivers/input/touchscreen/bu21029_ts.c | 37 +++++++++++---------------
>  1 file changed, 16 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/input/touchscreen/bu21029_ts.c b/drivers/input/touchscreen/bu21029_ts.c
> index 96c178b606dc..78e256254764 100644
> --- a/drivers/input/touchscreen/bu21029_ts.c
> +++ b/drivers/input/touchscreen/bu21029_ts.c
> @@ -334,6 +334,7 @@ static void bu21029_stop_chip(struct input_dev *dev)
>  static int bu21029_probe(struct i2c_client *client,
>                          const struct i2c_device_id *id)
>  {
> +       struct device *dev = &client->dev;
>         struct bu21029_ts_data *bu21029;
>         struct input_dev *in_dev;
>         int error;
> @@ -342,37 +343,33 @@ static int bu21029_probe(struct i2c_client *client,
>                                      I2C_FUNC_SMBUS_WRITE_BYTE |
>                                      I2C_FUNC_SMBUS_WRITE_BYTE_DATA |
>                                      I2C_FUNC_SMBUS_READ_I2C_BLOCK)) {
> -               dev_err(&client->dev,
> -                       "i2c functionality support is not sufficient\n");
> +               dev_err(dev, "i2c functionality support is not sufficient\n");
>                 return -EIO;
>         }
>
> -       bu21029 = devm_kzalloc(&client->dev, sizeof(*bu21029), GFP_KERNEL);
> +       bu21029 = devm_kzalloc(dev, sizeof(*bu21029), GFP_KERNEL);
>         if (!bu21029)
>                 return -ENOMEM;
>
> -       error = device_property_read_u32(&client->dev, "rohm,x-plate-ohms",
> -                                        &bu21029->x_plate_ohms);
> +       error = device_property_read_u32(dev, "rohm,x-plate-ohms", &bu21029->x_plate_ohms);
>         if (error) {
> -               dev_err(&client->dev,
> -                       "invalid 'x-plate-ohms' supplied: %d\n", error);
> +               dev_err(dev, "invalid 'x-plate-ohms' supplied: %d\n", error);
>                 return error;
>         }
>
> -       bu21029->vdd = devm_regulator_get(&client->dev, "vdd");
> +       bu21029->vdd = devm_regulator_get(dev, "vdd");
>         if (IS_ERR(bu21029->vdd))
> -               return dev_err_probe(&client->dev, PTR_ERR(bu21029->vdd),
> +               return dev_err_probe(dev, PTR_ERR(bu21029->vdd),
>                                      "failed to acquire 'vdd' supply\n");
>
> -       bu21029->reset_gpios = devm_gpiod_get_optional(&client->dev,
> -                                                      "reset", GPIOD_OUT_HIGH);
> +       bu21029->reset_gpios = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_HIGH);
>         if (IS_ERR(bu21029->reset_gpios))
> -               return dev_err_probe(&client->dev, PTR_ERR(bu21029->reset_gpios),
> +               return dev_err_probe(dev, PTR_ERR(bu21029->reset_gpios),
>                                      "failed to acquire 'reset' gpio\n");
>
> -       in_dev = devm_input_allocate_device(&client->dev);
> +       in_dev = devm_input_allocate_device(dev);
>         if (!in_dev) {
> -               dev_err(&client->dev, "unable to allocate input device\n");
> +               dev_err(dev, "unable to allocate input device\n");
>                 return -ENOMEM;
>         }
>
> @@ -394,19 +391,17 @@ static int bu21029_probe(struct i2c_client *client,
>         input_set_drvdata(in_dev, bu21029);
>
>         irq_set_status_flags(client->irq, IRQ_NOAUTOEN);
> -       error = devm_request_threaded_irq(&client->dev, client->irq,
> -                                         NULL, bu21029_touch_soft_irq,
> -                                         IRQF_ONESHOT, DRIVER_NAME, bu21029);
> +       error = devm_request_threaded_irq(dev, client->irq, NULL,
> +                                         bu21029_touch_soft_irq, IRQF_ONESHOT,
> +                                         DRIVER_NAME, bu21029);
>         if (error) {
> -               dev_err(&client->dev,
> -                       "unable to request touch irq: %d\n", error);
> +               dev_err(dev, "unable to request touch irq: %d\n", error);
>                 return error;
>         }
>
>         error = input_register_device(in_dev);
>         if (error) {
> -               dev_err(&client->dev,
> -                       "unable to register input device: %d\n", error);
> +               dev_err(dev, "unable to register input device: %d\n", error);
>                 return error;
>         }
>
> --
> 2.17.1
>


-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHp75Ve5YgDNvtqFC8-zPgPQminR%2B57iWjGveaK-Ddxhj7FuWA%40mail.gmail.com.
