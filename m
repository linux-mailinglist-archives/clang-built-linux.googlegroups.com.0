Return-Path: <clang-built-linux+bncBDYJPJO25UGBBGX6VDWQKGQEYID2YVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 490B3DD501
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Oct 2019 00:39:23 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id x128sf2763017vkx.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 15:39:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571438362; cv=pass;
        d=google.com; s=arc-20160816;
        b=HrenHtqHUUA3mQMz3qpk2dbw5+szM/FltEV9bKedCiw+vTOOCtwo1k5HHpKr61fgfX
         7cBwY/pSS7tfjwMK4f80HDkgryarS2Wdg2jpAE37WduIANXkpnb+G48w6ZOYp6SH2OSB
         2Ji4pfDRk8ruSDgK8kU2pi7mkCPwE3PJrzhQ0bcm34//OgbjOqfS3ASUCDzceDHB/JTN
         p3P5mE8UxQJQ7EHh6G54QDLv7gfIWJ6ZKV3aYnIW5Y+fJCzqEQrhjFHU/AdRRjKA/4td
         nHGP4kvFa33BE8G4LAzqzG3l17G7LLcUtFfrpFUo9d4aM1gPGLWameqIqxfkATOaVC82
         NvLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=zcPHwPRs9Jpv81xLWDY4XEFDNgPQBhH/tWfXjOH+2GE=;
        b=ZTa5CrUagpBBdcvKYiw4C9z4a1730Ye2zVuFOmxCuLOgcIsEApZ/VcHUZgQk88x/g7
         oRp50nz/abXAVveBaZDMD1noXDXhHM+91n5JBflD17wMkhjrh/FUhhqQHUXTXRMXK/f6
         z8Ro5/Hm0V052g0GwEvttkb15Hy9qMAO3KAOzVVEqgKw8mmsRFLAusCf3RzLxsVekK+O
         RKQLH6dRPPaTuTBLisyHcHbM5JnImX2pvBLya03grSBo+GNkNjtyMjt7t8JZ+fQ4nii1
         pkIQp7TOsRaOmvFMiaTLnqTpFU1NMI5FIxe3aRHS/w4JbvkrA4nrCssjtooyrEE+lNJ5
         wakQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dr2swjmW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zcPHwPRs9Jpv81xLWDY4XEFDNgPQBhH/tWfXjOH+2GE=;
        b=O3bD4CwMK8987LbvSCHS7JD5Hj3qe6zPfjixhyMBbAoJer0YQp0dVoQQcmkz0m1veS
         4eV9pni0L9OHWyrmCAGWA7stVpzKs4M/7Qxa9RmteCi/EFEMamUaN2xL5Gsdfgc4ur1Q
         KjulLz+WZMCT4UjjkZKRkTKLRoTEWqAmfrAEhwWxSrJp3vLLahXfMIUu6O+S4cgrzEB/
         +Zbh3EhQmawy/hAxP/HXhilgIbC7AeHue+u8p7ad7lQMDBRJbYWPWtWYSgBIT95x9YSN
         1SHN5K0SqaSvm0ix37mLoJUfPjErh5FEKOxQOCyhJCIq3aAUyc9Zt8u1lpuQQLUAU+8f
         2Oqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zcPHwPRs9Jpv81xLWDY4XEFDNgPQBhH/tWfXjOH+2GE=;
        b=MxYQLY2v0p/yaXMeaJo4r++cOgSUJmYx5L34OfXOPlPRSwG2prhM82WuPT+DjO9I5L
         jLVQPsq1R9ZDaoN/OK8BUAes0v8JFyvXTpQ9L4u0cbT93a2BMPFYBJ0SB2zmshARGwO6
         Kuwj70FjPs5tORmLET50uKTRds/lC9B3jTH8r627TGxGNgw3IjnQkDojAaSCvJ9U5rCo
         yoNgFH8sgiyNH86LRe8GcTRL2UYovni9SuJhCSWfD82lKN3K1hn4NJtL5EnMN3VEEb8Z
         ODUtq5VwtVnX8pEYQduqW7QZCU6XNdllzh1UgsJA/iqQsoMe3TLfLXAjC/juD6FpEW2y
         JQmw==
X-Gm-Message-State: APjAAAUCUVy+XEa66aermvZAvO/keLflLIycK+dE4KDYEaW3UflnyTeF
	tPdQTHZEDyPKPF6T8C7OQFU=
X-Google-Smtp-Source: APXvYqwymJqF8K7c417RKoMJFrS+wTqIxT57IW0xynfHidjZrSuYoOMERmccGeG/W4perAOAitOALA==
X-Received: by 2002:a05:6122:30f:: with SMTP id c15mr6541732vko.41.1571438362081;
        Fri, 18 Oct 2019 15:39:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:8c04:: with SMTP id o4ls309593vkd.4.gmail; Fri, 18 Oct
 2019 15:39:21 -0700 (PDT)
X-Received: by 2002:a1f:acd0:: with SMTP id v199mr6956755vke.5.1571438361699;
        Fri, 18 Oct 2019 15:39:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571438361; cv=none;
        d=google.com; s=arc-20160816;
        b=tMP4Sntr/RdqWHgLwrjZl4Q6420Dlex8ttTgHl51/x6PoyfLq8XQ8Wwgt2eBArQAhJ
         We80VbKFQKjsSOTjZ36eTT58JarwNVwZdANOSwidb5ZfZxOIkk5XCnx4WhBhTcGRj1ys
         6TqH7uBLfCXVsPzHCGYfZHpMnPyHUtmh85W0CEa9GvX9tGZkKV+bYEFuLLCug9rg8T+Q
         F/T8botFi4vszcSS6YKM8sWjNAfM67x1jfZHYWiWzFEbVhIl6guSTAg8shgDsYg5r7nS
         MOWAVEaZsOQHTKtt3gDY8U+QzCq2HFTgukbR5pe6gB6/ttunI7xMaycYfMk4+5rrSe6T
         B86w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2im9WWFUcoDI14VxL9RhlaxhC4Tk4lRtwhBBOgvO6gE=;
        b=vDA3dwkxZa7URzSvOKT47dlEk0dCF3IwwZ6GPKsvb5tjkiOYPawO4sWU71Hxj51hGs
         n06YXnWgBWRX97f0Zpiqr3n1AMPcvcAgxFXNHOLK4MnqKxBTc0fk+u8k1X0fcpL2qJt9
         FnT1dzoJeTJmvnk0IQQ1uegTm8xkZesbFJT9zdX3szGPJfL1dhD21t7d7oIX0R2MjqR8
         wBUmi//xVDjcPmxf6O9bbfwV0BtTQAUpGw4sSBHJdDTsIqzyv7QgHh/kKqIu9MxfX7VF
         Ve3DchdK8eTZ2oyoahy+DvOo+2o6U+OBhUHWLDP1hXiNLnV0ASh+xIxQVrdsXH778TVB
         +Ceg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Dr2swjmW;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id u196si480244vkb.1.2019.10.18.15.39.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 15:39:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id d22so3522915pll.7
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 15:39:21 -0700 (PDT)
X-Received: by 2002:a17:902:9a92:: with SMTP id w18mr12178257plp.223.1571438360183;
 Fri, 18 Oct 2019 15:39:20 -0700 (PDT)
MIME-Version: 1.0
References: <20191018111343.5a34ee33@canb.auug.org.au> <20191018222924.49256-1-natechancellor@gmail.com>
In-Reply-To: <20191018222924.49256-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 18 Oct 2019 15:39:08 -0700
Message-ID: <CAKwvOdnycftgCanEt_BpUOB9Uo0sderk1HZp3H4EQ8drAmjohA@mail.gmail.com>
Subject: Re: [PATCH -next] Bluetooth: btusb: Remove return statement in btintel_reset_to_bootloader
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Marcel Holtmann <marcel@holtmann.org>, Johan Hedberg <johan.hedberg@gmail.com>, 
	Amit K Bag <amit.k.bag@intel.com>, Chethan T N <chethan.tumkur.narayan@intel.com>, 
	Raghuram Hegde <raghuram.hegde@intel.com>, linux-bluetooth@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Dr2swjmW;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Fri, Oct 18, 2019 at 3:29 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When building with Clang and CONFIG_BT_INTEL unset, the following error
> occurs:
>
> In file included from drivers/bluetooth/hci_ldisc.c:34:
> drivers/bluetooth/btintel.h:188:2: error: void function
> 'btintel_reset_to_bootloader' should not return a value [-Wreturn-type]
>         return -EOPNOTSUPP;
>         ^      ~~~~~~~~~~~
> 1 error generated.
>
> Remove the unneeded return statement to fix this.
>
> Fixes: b9a2562f4918 ("Bluetooth: btusb: Trigger Intel FW download error recovery")
> Link: https://github.com/ClangBuiltLinux/linux/issues/743
> Reported-by: <ci_notify@linaro.org>
> Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/bluetooth/btintel.h | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/bluetooth/btintel.h b/drivers/bluetooth/btintel.h
> index d2311156f778..a69ea8a87b9b 100644
> --- a/drivers/bluetooth/btintel.h
> +++ b/drivers/bluetooth/btintel.h
> @@ -185,6 +185,5 @@ static inline int btintel_download_firmware(struct hci_dev *dev,
>
>  static inline void btintel_reset_to_bootloader(struct hci_dev *hdev)
>  {
> -       return -EOPNOTSUPP;


The existing structure of this code is fishy, but I see what is going on with:
 65 #if IS_ENABLED(CONFIG_BT_INTEL)
drivers/bluetooth/btintel.h

Thanks for the patch
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>  }
>  #endif

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnycftgCanEt_BpUOB9Uo0sderk1HZp3H4EQ8drAmjohA%40mail.gmail.com.
