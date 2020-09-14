Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBMO37P5AKGQEJ7W2XBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE12268360
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 06:12:34 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id l6sf11771914ilm.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 21:12:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600056753; cv=pass;
        d=google.com; s=arc-20160816;
        b=mIV8LXXga9oyesuV6+xRDxxf/+horGw+EavKHDLnO+HE+Es1NHphCggP6FAMMOVc7d
         VopJfOQO8t5MTZepfQJnMKDFSQZ3HYtkZhUZLRIzc248dzMJP9PpWdMott8pCChZYW3l
         nHA0TL9xtLrydpmA4L4Skvn1jw3pYYMY8Q651yMKiGlXOZ7CG+BX71pGozJDJAmtdz2m
         jjaKAqdznY4pd6cHCWKLLyefTwBXACImth+I3s9L93cG6TydXXnyxYmhT6BSIKbIltYI
         ItfSGs/Dtuec9GAyZ+wH2Se8mNQvM0DxbZDHjelXbuV6T2PEj9lfp2/5C5XTa2S39TBD
         30eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=fywJPMGk/AZuEj4TtOQYt0JnUUXauxnvh9TjSlvDasU=;
        b=xcKddXXNX/gQcqvpe0zIFUi9VNnbDjIY+Hmk1Ll4kVZ6ww/5rEBj2ZCRz3RunSYjfl
         uEebMn80ML0g6khyFUZ/XCUdSdS8Ej9HMZJ9wYHeozFqOCBTmKufFc0xDDcyHB6hdW7i
         fgfW/gLIwagphfgfE2/XfWB9cgITkbodL3X8jK8jk4NHKbtlLSLBVRV7SegEq5Im8AY/
         +ZelUum5yNHgMRYJfhnu1MRLO7nvWaotnqtYg+jG1yBReL3RxVCOsrCEiwGst0CE+Pjl
         wr9pnL1ryreA67DLZRGwJxA1Wy0ujR0jTxmZIjV4wToq2ERvpNfaQr1reFIN+zgvC3Br
         OIAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q0VNm+NC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fywJPMGk/AZuEj4TtOQYt0JnUUXauxnvh9TjSlvDasU=;
        b=KBZwCp1EGswW3TGXziXUBbRpg1QAMbZmcTW12zKrUs+qr6QX0+iK/+NnEXZVFvDDyh
         Zx7WTD6GuA9NhKTQeoslcAR8UcZGMpcejCCYAMYR0h0PBFGYoPyZz+lnkOVjfMsaXQmZ
         JH5bAQ/v6jbmvWVIiXtWE5WOQFRWVGRnENZj4A2a9VAu87h6nZcfsgSf+tkac2azVjKG
         LGrw26kLMYAIeNcFcvO70pBWyPLga8Nfn4UA7IYhih2Uv5fxOX8jch21yagFVwPMNrie
         xkwMSPWz0abyBLS3Czu6R142ab87eDaUuVIZeyp4m3wzJyfi9yKw4wOo6RA9TyNn0l88
         PvfQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fywJPMGk/AZuEj4TtOQYt0JnUUXauxnvh9TjSlvDasU=;
        b=lXac6oZ23IY4dl4X/NJxj/FCYubIa7Nk6DALgo54hnfj4Yx6ztOKQGRkaM9g/qyO1Z
         aebcydXPEcdU/JrIh53969sbJ3TE0FGc3UETdSTTPMC3/A0xU87deloy7h8Y3YBjyEjJ
         nfgISCMDqukZAhI4V3d43Q9aEWAXA8o3y+YPmnFmu37QZ8c/HLuvPsQ4cYEESpoMuklV
         RHCpEJPdkENPeiXQZyg11/qCDNdzrDK0ml9TCawIs/PkdW8NYVDImcgkDk3qDBVn/wRm
         9T+yciSGn8dp+muFZRuAUqWxZ5WJkrmVtEPblHJhAD5gq6D0R22cd6csTmcXFq/3Hldi
         5EJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fywJPMGk/AZuEj4TtOQYt0JnUUXauxnvh9TjSlvDasU=;
        b=lE5QK2aKs6IB7Xc/ctY4jXgkGYSVc4frmYdsI8UzCyjyP3GPPDEEY3uug2uZvZzxUG
         T6qMOJ+omMrSVYRwvRbCJ9fVnHKcwErAwj9shNDzcoNxuXarNhIxlby0QobwPrUoosYv
         LrXnEHbLtdmzIzsrPA6Q5nDXWryxbUBgX4JEMWvaxuFzfYuCuLNwIOE/tB1p+gac38E8
         htVeu9yb5/f0xOF5PrjVlaSyt7BOKeuiD7VKF4h52C74Ynub/jJOWp22V4ic9hpIYs3i
         c9gryoABLvQeDdVG0xCqz0C+f224BizFfYT5aPqWpQJ5+UAIJoN91H7uOcXtua/VrUsT
         iQCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lf5bHN7QJNiQbtUHms0jkkCacbslmXj7o7duXpegkzf/EbHxk
	JfMughsCeAfVlpmEYVft4hE=
X-Google-Smtp-Source: ABdhPJylBtypi/4ROcURbGiEL0HA9uyaAjahaHKuvVxl7e74rxsRfQXg0Yj6vuuuC9/gU3mA6PNmXQ==
X-Received: by 2002:a6b:5a0d:: with SMTP id o13mr9756786iob.186.1600056753313;
        Sun, 13 Sep 2020 21:12:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:60f:: with SMTP id x15ls1996117ilg.1.gmail; Sun, 13 Sep
 2020 21:12:33 -0700 (PDT)
X-Received: by 2002:a92:d248:: with SMTP id v8mr10180031ilg.121.1600056752980;
        Sun, 13 Sep 2020 21:12:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600056752; cv=none;
        d=google.com; s=arc-20160816;
        b=SGF5eX21Ym4gy/kpe3eS/oNdT+hNFJ3Jby/pDbwqL6/4ljZEchzYanKwLyGE3R7wa0
         DJsTuRl6nhOnpxAQ95xa+OozIut3d5KxxE41ulfmcJHz6YFvFiiPrtp9vW9wMrTsvsSj
         N5r8vfzkvuA3LITNz6bEseFwO7dcGYxTCQITqe1k8iEaWjVZO3HrsXGDD/+bpNsgsB33
         Fvjo/t009rR2UY3OnNY9nqLJEB487JGrBtkTeHqk7Vispcc6TcWERXe8wEKNM9loZOl2
         MFPCmi2gQBE0CNPVNVjtSmKk8afvAdop7tFAWuHpnb354+9lGnOE5K/q+u5GHPWr24dG
         ux7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4o8RiiIeaPF2zk+jHK0lxqhUIj20gFmE3NZMfj4jASE=;
        b=eZFUq6IlU/kkYrootwQi1/TwhHY3feCkHa8k0GtHBgo1hFxeV4Os8UiFVGg1IUtD+8
         zo5Ra8+IDkvJWP0wrcC6Gp83xaRYUEwIao+btvRADcqiXhzPPfofRmO+QBdMqzW246Hi
         aeMN/Vaavji1y/R7xn8UKuI1oiVAxlsWtXBCOQ+Zq5fGvlTCEnBOAflA9R+3WCpDemjE
         Unjxymgh095rrmi17pqTdDRT/z5QZoeI9CBe8L1qCaGnih0tka9KaD45Eca5jni5uftB
         TqFmUJ7N2gHmR1dLqegNEBlEFPmQBfwss2i88fA5T4Imgqp1tLqUMkYZvEgDio3V59fA
         Y8iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q0VNm+NC;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id f80si714077ilf.3.2020.09.13.21.12.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 21:12:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id f142so15638507qke.13
        for <clang-built-linux@googlegroups.com>; Sun, 13 Sep 2020 21:12:32 -0700 (PDT)
X-Received: by 2002:a37:a054:: with SMTP id j81mr10359104qke.23.1600056752350;
        Sun, 13 Sep 2020 21:12:32 -0700 (PDT)
Received: from ubuntu-n2-xlarge-x86 ([2604:1380:45d1:2600::1])
        by smtp.gmail.com with ESMTPSA id o4sm12672845qkk.75.2020.09.13.21.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Sep 2020 21:12:31 -0700 (PDT)
Date: Sun, 13 Sep 2020 21:12:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: trix@redhat.com
Cc: arend.vanspriel@broadcom.com, franky.lin@broadcom.com,
	hante.meuleman@broadcom.com, chi-hsien.lin@cypress.com,
	wright.feng@cypress.com, kvalo@codeaurora.org, davem@davemloft.net,
	kuba@kernel.org, ndesaulniers@google.com, smoch@web.de,
	dan.carpenter@oracle.com, double.lo@cypress.com, digetx@gmail.com,
	frank.kao@cypress.com, amsr@cypress.com, stanley.hsu@cypress.com,
	saravanan.shanmugham@cypress.com, jean-philippe@linaro.org,
	linville@tuxdriver.com, linux-wireless@vger.kernel.org,
	brcm80211-dev-list.pdl@broadcom.com, brcm80211-dev-list@cypress.com,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] brcmfmac: initialize variable
Message-ID: <20200914041229.GA1600388@ubuntu-n2-xlarge-x86>
References: <20200913143522.20390-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200913143522.20390-1-trix@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=q0VNm+NC;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Sun, Sep 13, 2020 at 07:35:22AM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis flags this problem
> sdio.c:3265:13: warning: Branch condition evaluates to
>   a garbage value
>         } else if (pending) {
>                    ^~~~~~~
> 
> brcmf_sdio_dcmd_resp_wait() only sets pending to true.
> So pending needs to be initialized to false.
> 
> Fixes: 5b435de0d786 ("net: wireless: add brcm80211 drivers")
> Signed-off-by: Tom Rix <trix@redhat.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> index d4989e0cd7be..403b123710ec 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> @@ -3233,7 +3233,7 @@ brcmf_sdio_bus_rxctl(struct device *dev, unsigned char *msg, uint msglen)
>  {
>  	int timeleft;
>  	uint rxlen = 0;
> -	bool pending;
> +	bool pending = false;
>  	u8 *buf;
>  	struct brcmf_bus *bus_if = dev_get_drvdata(dev);
>  	struct brcmf_sdio_dev *sdiodev = bus_if->bus_priv.sdio;
> -- 
> 2.18.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914041229.GA1600388%40ubuntu-n2-xlarge-x86.
