Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBIHZ3X6AKGQEM2I5E3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFD729A250
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 02:49:21 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id t77sf5545vkt.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 18:49:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603763360; cv=pass;
        d=google.com; s=arc-20160816;
        b=J7VWlbJ1B7so73jDeD90YRNxTE5cxqkfsOhV88jLA4koo6bT7PfW6S4uYdb7SagWLu
         ei9SgVk8WIcbdj9JZaJMvnoA+YMgYZgjSfUHkpkUTS7mphCRzgrWLgQDSZfg6/DzZlir
         hteU9KXT39ofgD3PS4n+8h/Tlk3nhH2E3n6KHKARr+qUddw5Aqc5M/efeyx7mUzLmOQx
         IXJNRvkzKaWVAM6CYG7jkU6dJRVkjHOTkepSdzJRKr5dwITKeuPMD8amXn1fGFS69S/Q
         p3iKfr95FrZeqV8Ck8v0D81xaUFe6JThLW1mdTHzvpVcVtKdrU4cImq/YNk4TrcgSGPf
         Mnxw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=nwhc2CQVwcOCELbTTEnWIsP/OCYidoMYLU1KQKjPYEY=;
        b=G4Uj0+0k0Xer5l4Fn4BkFiSjwl9L0BT6oez2Stm8oaw+dLSaS4REYjCAmsFO18D5H0
         kHnfKHCuHYtTwWLWPiMAM5x+rPZ9fOfRk59LVJAd4YckkqrjsOEfSV9DKFqINCF/txXj
         01aAnSbefpwK8flEGVGNB9yMos7YQtjCBtbTCKKIrLugoUN64a3POInQb0w/kBi/At37
         XfEOecsQXe6aWIebtDmDuMX3rgJa491OfdTzjkySw+oHmvpSZwwSZ2w+KtJeZ32/zGuQ
         1HM51hJLDuB3czcY0Uuc3j+bCffd/R65xJ3bTJ1tl2vLmyEVJkki5pV/o4846RXC7W0A
         /g/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=obNNBZeO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nwhc2CQVwcOCELbTTEnWIsP/OCYidoMYLU1KQKjPYEY=;
        b=KTbVALX+M0xYyeqxUBtGFfkL5trhsn4JsUqcWm83uDaeIjmue3tXoGFklGbg6KgEG2
         aKq0fHnhUGO9lDA7gs9+d5dDeJnT5t1GjhVdEcYTEx8eaFcDqS/dzAE7MRjBT/sJ841v
         ZOy5yDosV/wXAX/3LtkmDCvfRoGYBnpsQUOqPJm6fxW4k1gHwtXaAveHDQx+2d37Y/eJ
         xwxcsWXYEMUupfDx7ckniY5UCaA1GtcUMk/jVteHBvPqDDQjMECUjesaDBFdtQNCLEhL
         Jz9rXgVm+xLP23ntaLGIhDp/gThPe9cZTJRWHJCSEp3W7F8d/IXp0CeLsX+4AWNH+Qqv
         YoTQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nwhc2CQVwcOCELbTTEnWIsP/OCYidoMYLU1KQKjPYEY=;
        b=q41G/SgKxIoUXDpsMCbrf3JUqZNKp8SMcgnCbDyd55j3WcsZ3etdJP488RC/NiPdFf
         vuS9lnEPDaGDgimJML1eg9nLQGaJKm7g1vaXfSnHpCsky9tZX1VgPIvp9DN0DHudUXEi
         v2gSvngA5x7ryqSXm+4CAOgEoq36g7lB5QdDfYJEUAbuso8IzMC5Q5CbNLA7L+Bcxokq
         +L4bInc5XNx9jL+/v5j8EHX36f99kVKQgwlgEEfMJwC5W5dxhU4cXNIlQIj8bjV2I7I7
         7rEhKXp/2/a/98En4fu0fgz2Tbp7jk+2y68OKs2g8RmuAmmx88tIjJMegHkyeX4aMgbL
         f8Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nwhc2CQVwcOCELbTTEnWIsP/OCYidoMYLU1KQKjPYEY=;
        b=jT+VetZaKaSTeA8nusIyjC2+F61skZ4zO+ssehQkCXole1T94qg/SAsHa6PG3ucfjM
         UWPjI6VmnhmIXSoVsXEbqx/OMYE0Q02xdEwQj4Fw5g6pOtz2b6DvA333VZ+OZZ3SVReQ
         b1/FXjXHAfu3NkaaKTMNF9SbFc4m7MvC07MHIfOrqJUE+doRP1F9l9dM0cea9pOKxgTq
         RsASucl3WqRCoIRXAp1ZQjR2E0hnivZ+Cf5zJ33Uik1urbqnDReSN3/sjHRcJ+PvDXf4
         vem/ugJWzZ9M6/975MwR4LhkdKcnfUeY2m5ugsdT0Q57VC6TQqcIwGViSAZrFwUw/dyY
         qZAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530NWrQ8a3vN3t8gOdrixQcfo9ZuUAeRranu61idv4mFdUPHHywq
	CaUFyvygo7TM7Ev8uGxXLlQ=
X-Google-Smtp-Source: ABdhPJw1NDwxx0Z/f/ZqTL85V4ZSWoliev86gwVD2pd4DCefgP3w8hzhmii+CULHyWmGucIKyt/CtA==
X-Received: by 2002:a9f:2f15:: with SMTP id x21mr20817uaj.104.1603763360361;
        Mon, 26 Oct 2020 18:49:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2dd0:: with SMTP id t199ls1188086vst.10.gmail; Mon, 26
 Oct 2020 18:49:19 -0700 (PDT)
X-Received: by 2002:a67:1e01:: with SMTP id e1mr157429vse.49.1603763359870;
        Mon, 26 Oct 2020 18:49:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603763359; cv=none;
        d=google.com; s=arc-20160816;
        b=RYICwFSLb6QZzZDkaoZIjgFYyyH/B4XcY6Y13sYYrgvTTak8wuBawywKcQ7mlGKlLI
         X+D6KvsMB9Podb2tBf2f7o0D3w/8LdYwIBR8ANpsIx5iO77Zde2A3fOhVyFlbblpzWuX
         nsJAFHCeJDNENQ6G0XQoWsOH8XK1a9OSIEwFrbuPdln4nPhYvqHpIF++Ld/LxanYtu9p
         OMyv+8A25ChYlt2FMcyhkwU+M4N+dXyG8v0znQYBXscbe3GNHPIQUYuaPC0Pwjzq4QPl
         6wJGSX4j37MHoAv2c5CZ3Irx6S+dwkz1I/fRA6PE3uKrry0e+L/SSgsbiYRtzJ9HKS3O
         ng1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=A+r2NJhCTfNtmf0TnqVFjaFsZaaztFRz19hT+01PSs4=;
        b=GrEv7XWeIuqn1kQX9H40spPhqqS72kygMsHOa2hfnlkl6FKkDU4QBPF+I5wn78JOAk
         BEla7ScKv7wTdbSZrhIRks8ky7EB6kib/SOMu8xTs6VfJ8AwPKXd991ddqY0ejU5HdqR
         x6q0Zjo0ViuiE9Quo6SU/6PVqPo12gVJ9PmrqAfoFTd9aFRwy3T+6N3Ue6ax0fsd09Nt
         817OqLye6DYZuhmXVt7uQdL69PJyblu4IEOnDavKfak8ZdfwObYBUAIfxh2pe7ixmM4c
         nb1VKm2kiQlPxb5oxeNrgE55jr/zFX1Or8tc1g573rte2Q6bG14YRut29DcdovUUuN+S
         NMiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=obNNBZeO;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id s3si652578uap.0.2020.10.26.18.49.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Oct 2020 18:49:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id m9so8276763qth.7
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 18:49:19 -0700 (PDT)
X-Received: by 2002:ac8:718a:: with SMTP id w10mr17913043qto.145.1603763359475;
        Mon, 26 Oct 2020 18:49:19 -0700 (PDT)
Received: from ubuntu-m3-large-x86 ([2604:1380:45d1:2600::3])
        by smtp.gmail.com with ESMTPSA id j25sm7868874qkk.124.2020.10.26.18.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 18:49:18 -0700 (PDT)
Date: Mon, 26 Oct 2020 18:49:17 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Yan-Hsuan Chuang <yhchuang@realtek.com>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Ping-Ke Shih <pkshih@realtek.com>, Chris Chiu <chiu@endlessm.com>,
	Zong-Zhe Yang <kevin_yang@realtek.com>,
	Tzu-En Huang <tehuang@realtek.com>, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH net-next 07/11] rtw88: remove extraneous 'const' qualifier
Message-ID: <20201027014917.GB368335@ubuntu-m3-large-x86>
References: <20201026213040.3889546-1-arnd@kernel.org>
 <20201026213040.3889546-7-arnd@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201026213040.3889546-7-arnd@kernel.org>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=obNNBZeO;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Oct 26, 2020 at 10:29:54PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> clang -Wextra warns about functions returning a 'const' integer:
> 
> drivers/net/wireless/realtek/rtw88/rtw8822b.c:90:8: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
> static const u8 rtw8822b_get_swing_index(struct rtw_dev *rtwdev)
> 
> Remove the extra qualifier here.
> 
> Fixes: c97ee3e0bea2 ("rtw88: add power tracking support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

> ---
>  drivers/net/wireless/realtek/rtw88/rtw8822b.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/realtek/rtw88/rtw8822b.c b/drivers/net/wireless/realtek/rtw88/rtw8822b.c
> index 22d0dd640ac9..b420eb914879 100644
> --- a/drivers/net/wireless/realtek/rtw88/rtw8822b.c
> +++ b/drivers/net/wireless/realtek/rtw88/rtw8822b.c
> @@ -87,7 +87,7 @@ static const u32 rtw8822b_txscale_tbl[RTW_TXSCALE_SIZE] = {
>  	0x2d3, 0x2fe, 0x32b, 0x35c, 0x38e, 0x3c4, 0x3fe
>  };
>  
> -static const u8 rtw8822b_get_swing_index(struct rtw_dev *rtwdev)
> +static u8 rtw8822b_get_swing_index(struct rtw_dev *rtwdev)
>  {
>  	u8 i = 0;
>  	u32 swing, table_value;
> -- 
> 2.27.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027014917.GB368335%40ubuntu-m3-large-x86.
