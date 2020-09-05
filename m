Return-Path: <clang-built-linux+bncBDY6ZAV5UMHBBN4LZ35AKGQEV4BGJXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 367A325E78B
	for <lists+clang-built-linux@lfdr.de>; Sat,  5 Sep 2020 14:34:00 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id c198sf3086523wme.5
        for <lists+clang-built-linux@lfdr.de>; Sat, 05 Sep 2020 05:34:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599309240; cv=pass;
        d=google.com; s=arc-20160816;
        b=qZHKr9VmSjIJeCC5phxOzid2e+nZEkI0uzjSWVuyrEPjLJ3itqw+EKqVVReBCqVxVw
         j2zEglOf2Eh53jYbNhwCl39X0UfMqKNLLi/om8F71cKZzzk46wyiMgzcfzTR3I9BQbbw
         XyXc6BlXqdF4rnYxXrcU4gZHcno4h3Ook7b5VtuAo09EmHcCg87gXfEbq3TnlFF7iA1J
         6n4yfrdKbLDXMQ4JYQsFHy+DtUvwjIEFPH6fCZ1gNmbCV7yUM+FCqMc/eyKmzi5B8K8J
         CFtQcWnAApQt6eA39RHFSsi8gybdGbsAlGoIU8RQGKOqC7sKiuvNjJyIkQd+Zl8Cbz6h
         +JdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=Lr8V9GLHwskucFduYKrZS5QMogXNsJJf43DkAgUHoqM=;
        b=uNdhPuxbROa+4LSbJei+pEqmdge08u7q6Mb/KSpV12ziiNTwlBlt8GucHbU2cYgA8k
         1RjWT3ijs8469sC9K4xYUG5gD8Y70ri/W2RyIA5+iQr8ce5ufqOb/Ax/qQHL787k8dQM
         fxsTrH/RCMP4F8qfYzQkahA8VkAc7OvMZxM98PUpBDKkrGQpW9HHdPPAfP1hjoBteXrO
         PZ+xfq7OU6Cj0oi0AVoctXK2AodQUos7W3T8tH/6CctUS/HRU61hCZQf40GrUw8/ZxO+
         2Bk5dnHU3V3S4HSl0gMzRJ6FTuB+2PYdc9/8Y7GqPCFw67+gQ+m/hnBkl5hqgOHMxcs9
         Nzig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K5iTRjKU;
       spf=pass (google.com: domain of syniurge@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=syniurge@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lr8V9GLHwskucFduYKrZS5QMogXNsJJf43DkAgUHoqM=;
        b=BtMs8sphxHDnie22bMmahGdMaNR286o33B3/AIZ4EnZ0TAIBJLnpCv2Vf6pbUrZJMU
         KHt5Dy2cZGaRv655c1fyLNVKBxaHyQJDv+rTUXRXl57VshbGU9t9ta6K8cwcXoMYcC8c
         IXcNCElpLkDUMk2AFMNH5I7VQqN5dLYErKdZHlH3mIT8YBiTu6y9IDtst6H9N9hw1aPL
         e4mLjuReG68/cSwk+My1TiFMyKWto13XnbWG9JUi2d1sx2e1DlgR1DbkGoiCEYxX+DEi
         ++5mpsPmSieEHkAjAtLoN2aGLFMsxwMMDQpeQN4yHdfuDHpO3L1ZXDItnGCuIFuvr4V5
         2O1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Lr8V9GLHwskucFduYKrZS5QMogXNsJJf43DkAgUHoqM=;
        b=l6dezQC4OGaMMi0UPHL4vk9gOsRKBwApwiVxMvIUhZ4w/VNagwz5nc4qWN67PXugcn
         HBNorh8wu92KXU/O9OWuEMdlQn7Bltmfq8PvPaKtra2koKpgKIusi8DFg4SZKyqSPqHk
         BIevxICgc7UANs6qjDFhOFiaw0FMfH3lSsB1MgNL/s60WD8rWgGm2rE3s8fFUqW9/OCH
         3xihFip23xpftynxi0o8xkNLEfrCdbfH9FtAzgLiL4x34tnroRucdDy3HBcF6rT0xiKp
         OWHKDAoQZTW3wytf4Fg/VV9zMW7SA7Qo5VxPWSwWbX5w7uQjxTPuQUVU4WmfDiGTBKrX
         oUwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Lr8V9GLHwskucFduYKrZS5QMogXNsJJf43DkAgUHoqM=;
        b=ExJ8bblxLrzGZBUXnjF3NCnlpRJw315smS5HRdAE0Kz7q98u6AkDQQhFhwEVJznG7F
         av0sFpemSVL7DXeC5jPJdW2FETj95Ecnk7eWksvXmXPba/LLJfsnOHPwbRKKjGF9/3Jh
         frnTQJSAFZCHSLViqPoboMlp4KsDFkGUBRmsWPdxN5LMRQnnnJJT0a18ZkX+vmO9kmi4
         yxUYJsqzncDotS09Tfa4PfrSFtg5zhazDfFD/zcFKteYEb9mFl36RCxTUYmP6FEWd7Gy
         U9mJfUK01t/eq7Q8VVR9TOyDLMBD9e5X390hL6FRgfzH6N+4XiFsh0tgww0J/RyVzzqg
         dyFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531wCvGTW+TXh6XO1FW/dB0gJ3MvO1v04EILLhun1h7mjmp+ZQgZ
	CgesX8ddFiMUaoW8c6zeSbo=
X-Google-Smtp-Source: ABdhPJwBTnD34ZeYGrZJgsJxLHFEBkdWdvokBWoCtouDANkmpGdH4OO4T2jFd5R0l+IaYoNazTELNQ==
X-Received: by 2002:a1c:6145:: with SMTP id v66mr12662362wmb.171.1599309239914;
        Sat, 05 Sep 2020 05:33:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:8288:: with SMTP id 8ls4247556wrc.0.gmail; Sat, 05 Sep
 2020 05:33:59 -0700 (PDT)
X-Received: by 2002:a5d:6343:: with SMTP id b3mr12968288wrw.179.1599309239070;
        Sat, 05 Sep 2020 05:33:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599309239; cv=none;
        d=google.com; s=arc-20160816;
        b=YgtVXk/N1UWxoXdtjT1wuwnnzQy0ce5jd6kDklYr6qzOHGDWXrGc+JqXJvCbo/afTQ
         p6Jz7l+AG9eHnshoD+wZgYN7Oh0fQqLoi2eof7aMSlL5e2Em/4FGk9rZrw5ItJQReez3
         0WC2JsRs4Iet+XU32Osq5LxiFYrXavdPjC8tmKis1yWbX2EENY9yNbENAgczjsmzq+Dt
         uQw8/l6L0q3eWQ5t8tWlvzsq81UeJ3GOfjtCfwjQUU40gOtnxD0Rk3fQMM8SKdtiZNNY
         DgGZcRMnDXrwH/sve5k3u6ImBn+PlIXih/n/nzIJAD3f4Q92hchDGnzNUAyTMoJDToCZ
         Nppg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=t854kOldY0BU542TztnP6NrgeTuoBg1ycvUcY82anFQ=;
        b=Y4jpVEZ8FXmPAhWuyudCT4cZ7F7u2Kyp2qSHl1cEnXyxSADsPkml+8b/vGsxRKc6BM
         M+gE/2LlojcU9WeWxylDmQBZ/izmHKum9NUsZfyyphQSWnC5YH7OOBPmlgcBuoRy3EqP
         hvHwDu7arezyJ2a9UuPNCKJxWaj/YroktwADUDaqq1mO/j4hweKZjWYT34U1BMCKv2+U
         rlK66+TcFtAwb3K+KYhWql+MktfgC/ugd7oOdmVAAATBEiUhBtikO6Ne2eKIaMD08/8q
         nOefYOINsIKikIWhUPlVcvMzXjgThMccJ6tkIAXGO8UgbuDVHEP8DS9acCG+CIHRDR7x
         IiPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=K5iTRjKU;
       spf=pass (google.com: domain of syniurge@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) smtp.mailfrom=syniurge@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com. [2a00:1450:4864:20::141])
        by gmr-mx.google.com with ESMTPS id y206si115837wmd.2.2020.09.05.05.33.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Sep 2020 05:33:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of syniurge@gmail.com designates 2a00:1450:4864:20::141 as permitted sender) client-ip=2a00:1450:4864:20::141;
Received: by mail-lf1-x141.google.com with SMTP id y2so5208954lfy.10
        for <clang-built-linux@googlegroups.com>; Sat, 05 Sep 2020 05:33:59 -0700 (PDT)
X-Received: by 2002:ac2:42c2:: with SMTP id n2mr6120796lfl.117.1599309238586;
 Sat, 05 Sep 2020 05:33:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200904180647.21080-1-trix@redhat.com>
In-Reply-To: <20200904180647.21080-1-trix@redhat.com>
From: Elie Morisse <syniurge@gmail.com>
Date: Sat, 5 Sep 2020 14:33:47 +0200
Message-ID: <CAC_JBqor9K07a_ok35QOtd-CxYjpUu=915+HNcvYmnfunt2-Mw@mail.gmail.com>
Subject: Re: [PATCH] i2c: amd_mp2: handle num is 0 input for i2c_amd_xfer
To: trix@redhat.com
Cc: "Shah, Nehal-bakulchandra" <nehal-bakulchandra.shah@amd.com>, 
	Shyam Sundar S K <shyam-sundar.s-k@amd.com>, natechancellor@gmail.com, 
	ndesaulniers@google.com, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: syniurge@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=K5iTRjKU;       spf=pass
 (google.com: domain of syniurge@gmail.com designates 2a00:1450:4864:20::141
 as permitted sender) smtp.mailfrom=syniurge@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Acked-by: Elie Morisse <syniurge@gmail.com>

Le ven. 4 sept. 2020 =C3=A0 20:06, <trix@redhat.com> a =C3=A9crit :
>
> From: Tom Rix <trix@redhat.com>
>
> clang static analyzer reports this problem
>
> i2c-amd-mp2-plat.c:174:9: warning: Branch condition evaluates
>   to a garbage value
>         return err ? err : num;
>                ^~~
>
> err is not initialized, it depends on the being set in the
> transfer loop which will not happen if num is 0.  Surveying
> other master_xfer() implementations show all handle a 0 num.
>
> Because returning 0 is expected, initialize err to 0.
>
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  drivers/i2c/busses/i2c-amd-mp2-plat.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/i2c/busses/i2c-amd-mp2-plat.c b/drivers/i2c/busses/i=
2c-amd-mp2-plat.c
> index 17df9e8845b6..506433bc0ff2 100644
> --- a/drivers/i2c/busses/i2c-amd-mp2-plat.c
> +++ b/drivers/i2c/busses/i2c-amd-mp2-plat.c
> @@ -155,7 +155,7 @@ static int i2c_amd_xfer(struct i2c_adapter *adap, str=
uct i2c_msg *msgs, int num)
>         struct amd_i2c_dev *i2c_dev =3D i2c_get_adapdata(adap);
>         int i;
>         struct i2c_msg *pmsg;
> -       int err;
> +       int err =3D 0;
>
>         /* the adapter might have been deleted while waiting for the bus =
lock */
>         if (unlikely(!i2c_dev->common.mp2_dev))
> --
> 2.18.1
>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAC_JBqor9K07a_ok35QOtd-CxYjpUu%3D915%2BHNcvYmnfunt2-Mw%4=
0mail.gmail.com.
