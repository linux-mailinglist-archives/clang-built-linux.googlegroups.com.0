Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBCOEXLXQKGQEBTTP36Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3A81175FF
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Dec 2019 20:35:38 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id l4sf174183qte.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Dec 2019 11:35:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575920137; cv=pass;
        d=google.com; s=arc-20160816;
        b=epEq1zLJOp/TMOArXGKp9Nry+Ta0Dn7vMyfEWgeScH+x9n8dxhCABUIZUxFVBRJVJL
         JXgiiHwWXy5cmJBqhOYEjl+pdt6GVF1WtEPETsjYyaLwzjmZfLf87vV3Z6ZMVUqzpBNw
         2gxefslg7/8iomOlmyyS+XK2P8up4YzWv0dkL0YWbXmYJ/XGCVbnRXT3gxmCjLg9dmWh
         HerbPoUUUz+Qbp/6sOX2AEnpw2FLF9lvWXSji0xzB28Ui+2Pj/n4eHOcja7J1yMl3LVk
         q79GVLIkHwfPfiJpO1UMKUeb/jzHLQhoQtHMi0ygUXe6LDjKFfg9pLMYtYfMkE3fT60v
         7J3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=mxYXLcDTE2j1AfkR8yb0w/MMTb0Dm31MUP9uhLVn14k=;
        b=gXIQFLgbVAf9T4I4dj7yFSszAEo5cefjMB6majcHxJrFKOV4uPMJ6+/XX15JzJjsh0
         paUW8IHcDYB1UHBTVM1VbQ95DagAFeXTBDJeRcUK8qinNsoUV9tOR+ZJvtTgGxSKi/R7
         f+8dv42Nl1WtcIlGJvcMEVB03kZqImOuULMiDdp3vxKJPFR6HOeTbS4XEnmEy+Sf3rvu
         v6YLQLxZ9ifdNarJlcIzbgSNceYCj7XDWJpSho8EfCo+ywHdpzjcTtIWeL8onpn/WZgw
         xyvbBOoq7nCKI/mly7xlyO33VRsRnidWpd8NVM9Q/KkwAb1velcl6qbZ2NJPieaSOziF
         hGfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aLqjcIXV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mxYXLcDTE2j1AfkR8yb0w/MMTb0Dm31MUP9uhLVn14k=;
        b=d1srUp5WbZFWaOEfdp99SXb4PqaLoCqdRP8IjgrzaaecpsX4sn8sefSyMhd3Y7wOU7
         VMU2iXqVyG9MBCY5Rp9xyH/HgobPsjqpney3dptMkTdFH2y7oOPW4QhYK1udThpgdpr0
         0ZHdfHAC4W1oYY7TB+MTWsKlWtld1z9FvNu6fyJJo+4Py1HGbFpIG4YQGrfygO5VXy4/
         DGgvEkeLOHXrO706SBzbJ6Zd4CtwQ263jZ2Jw1LUa1V8vlXJ71dFEqbLJBIMBFDpMgjy
         GZaJKnzsn+btUoh+5E0qU0RqaPuidaD3/F7gDDClBx/M+yupmiiz17R7b5kA0ZqUY7cW
         LqJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:content-transfer-encoding
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mxYXLcDTE2j1AfkR8yb0w/MMTb0Dm31MUP9uhLVn14k=;
        b=KPIImycNwy8uFxv2n0nF+BvP6inXj8R+dFb189zFzSSc078q5iaORixLC1rCOd0KdJ
         sIjo30Rg9fPqMrPcoxkvZpNvy/M1X7pZss21uO3FGfPGyqhBUZmfOHaE4T2ZzP+yNlrh
         4r/JM1Pk6wVJm0vX5W59dG1p46pjQEaoPd0cY7i3q1vPHgOoyb6sACRV3qr55upZs9CA
         MB5T46rK2zbSMfYwUB1iKpxE4kNbexd4kJ+d98Pgq+SpJzRX59vpt3X09FHMgZLS5aZ/
         g4Tl8yE2g6o5WSk1aFvH2zICPQgGMAMyp2L60+NPaZyaUDw3dgvrcDQaYXpqzfCPlGxF
         P8LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results
         :content-transfer-encoding:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mxYXLcDTE2j1AfkR8yb0w/MMTb0Dm31MUP9uhLVn14k=;
        b=DqJlCV4MYRZt3dir/6P/un5ft0T9ATHxHYb2e/KP8vGtUBwIofpBK1nRwLuROdpAAd
         fVUz9ChGk84oYok48CDsLO4iLG8Gid12Hn7o8k2ILE8QnOy6gjLKSt5XXOkxT84Xq+88
         EhX+ZuEgtt3GLKaSYnnf8CuLnr02SoknhgnuMxgg8pEj1HWGtsmRBlAHimz7eVTeXbhM
         Qn0A6NRbyC4Ap9kylMk2IKXYWEnjEN03nh+ztP2ofohOQOk84GFUn5GIEwjZ7i/fP930
         erOBh80HEwJgNcpYptpUqZsZARiZSzCC/t+6OD78pje5paY7gyEG4zT0V9Sy3/v2Pwmw
         Enxg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVl5TJwny8uNDr3olFQhOn00NfLb3Vz4B9p6lcpfxTYJOFqz6yU
	jz+rz7N75fidOI/pmtiCZfE=
X-Google-Smtp-Source: APXvYqxlqxPmz8HtXLJ6DDfiGkRQ1OzmFU1yQ3cAwg9LprF0m/fh7GTUvpaZ2D5rUGYYlfLZCPPHZA==
X-Received: by 2002:a37:664d:: with SMTP id a74mr17953586qkc.4.1575920137588;
        Mon, 09 Dec 2019 11:35:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:e506:: with SMTP id w6ls5332429qkf.12.gmail; Mon, 09 Dec
 2019 11:35:37 -0800 (PST)
X-Received: by 2002:a05:620a:1358:: with SMTP id c24mr30015732qkl.285.1575920137250;
        Mon, 09 Dec 2019 11:35:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575920137; cv=none;
        d=google.com; s=arc-20160816;
        b=ufuQR6JdAnspn/BvOFdqdMydvElYxSY6g9qiHf+YTSP/oI2jfAV/3O16Zz2gz5lCVS
         SZLsSSi/CFI8NV4KLcuuN95AyWgKzf1EVD5YR6SfET2mRY5k3ikSZgHQdfTBmGa+pkXk
         SkGb8FHoV7dUKAsT+YUGMjQ7Jz5mJKgz3DWCNt9gljybYw/Krjq/a8ulZKIAHlRlewjI
         CWuv9sU4Zt1qwa6fMm4ZOGgO7Vg4qd19/o5APSU6CsBZETrNHjucQ5wYtZhVUjLxGHuH
         MN7k9gvmkWkoYiUFHD/WHTHefqAoytdzCGe8umRQ3wDMdRZQ/gZRTvJGrwf1k/JGZ458
         RFmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lz08fqbos/WcpyEXhdbWqHakP8Pyu2uPnLLz726heMc=;
        b=PAWnsHHi2MvAbyKZyiqEYDLFDl1t+5D2ywVPBKuN+KwxBOIGh5BH8u0Wzz8uxsCv07
         LXkCXBKsHg6RR/Fms1fGKvkS+kukSFmfg44JAKFjN3luyPuPIyoFIIepFutKzGyLQYlL
         tV/wMTqAjv1v2WZFTJBAhwsikXxaUjHRJK1JVRqM4cj+5h+D6w1p0w2e6smOtBtyqwaB
         H0a9f9AbIMT1GY20txzs9LcMbdkc0R3MWagcVa1JGbAyDtYK4POoh1owJ3U8MQMQxX8+
         5R6V5yUtaQGVprGIl1z6UvPh90ohOK4xG60P//Et4wXOLTqMbeGgAJEsliRguZQWQMFy
         Ts1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aLqjcIXV;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h17si28001qtm.0.2019.12.09.11.35.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2019 11:35:37 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id 59so13246743otp.12
        for <clang-built-linux@googlegroups.com>; Mon, 09 Dec 2019 11:35:37 -0800 (PST)
X-Received: by 2002:a05:6830:1716:: with SMTP id 22mr8392775otk.296.1575920136583;
        Mon, 09 Dec 2019 11:35:36 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j26sm300153otq.18.2019.12.09.11.35.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Dec 2019 11:35:35 -0800 (PST)
Date: Mon, 9 Dec 2019 12:35:34 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: ci_notify@linaro.org
Cc: tcwg-validation@linaro.org, arnd@linaro.org,
	clang-built-linux@googlegroups.com
Subject: Re: [CI-NOTIFY]: TCWG Bisect
 tcwg_kernel/llvm-release-aarch64-next-allmodconfig - Build # 45 -
 Successful!
Message-ID: <20191209193534.GA30363@ubuntu-m2-xlarge-x86>
References: <151282325.3957.1575897032958.JavaMail.javamailuser@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <151282325.3957.1575897032958.JavaMail.javamailuser@localhost>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=aLqjcIXV;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Transfer-Encoding: quoted-printable
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

On Mon, Dec 09, 2019 at 01:10:31PM +0000, ci_notify@linaro.org wrote:
> Successfully identified regression in *linux* in CI configuration tcwg_ke=
rnel/llvm-release-aarch64-next-allmodconfig.  So far, this commit has regre=
ssed CI configurations:
>  - tcwg_kernel/gnu-release-aarch64-next-allmodconfig
>  - tcwg_kernel/llvm-release-aarch64-next-allmodconfig
>=20
> Culprit:
> <cut>
> commit cad75ce11002e9880daf3dc9d2d9ded8f9a7e706
> Author: Michael S. Tsirkin <mst@redhat.com>
>=20
>     netdev: pass the stuck queue to the timeout handler
> </cut>
>=20
> First few errors in logs of first_bad:
> 00:13:56 drivers/net/ethernet/freescale/dpaa/dpaa_eth.c:2622:20: error: i=
ncompatible pointer types initializing 'void (*)(struct net_device *, unsig=
ned int)' with an expression of type 'void (struct net_device *, int)' [-We=
rror,-Wincompatible-pointer-types]
> 00:13:56 make[5]: *** [drivers/net/ethernet/freescale/dpaa/dpaa_eth.o] Er=
ror 1
> 00:13:56 make[4]: *** [drivers/net/ethernet/freescale/dpaa] Error 2
> 00:15:21 make[3]: *** [drivers/net/ethernet/freescale] Error 2
> 00:20:33 make[2]: *** [drivers/net/ethernet] Error 2
> 00:20:33 make[1]: *** [drivers/net] Error 2
> 00:20:33 make: *** [drivers] Error 2

Reported:
https://lore.kernel.org/lkml/20191209193440.GA15189@ubuntu-m2-xlarge-x86/

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20191209193534.GA30363%40ubuntu-m2-xlarge-x86.
