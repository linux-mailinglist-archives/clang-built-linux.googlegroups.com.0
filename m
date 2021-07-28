Return-Path: <clang-built-linux+bncBD3YVT6NZMCRBZWZQKEAMGQE4PJWPRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 624913D852E
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 03:03:35 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id j16-20020a05683015d0b02904d6c4f8a8a3sf123622otr.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 18:03:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627434214; cv=pass;
        d=google.com; s=arc-20160816;
        b=fjQWZCOw21c8ew71LGaxW66emTUF7I/UxenakYQC+pytJZD4XgaZjJ6hWSSsS11a5T
         I/WGo7VEKl4Sj3m/pR95im21glkd+zB4tpz3BLY3ba95DVqJ0ALQVZ658szjOJ2AnhJR
         8zVvVv39zwLwxtMqcO8TVdqZ2MoyqOMIosR0Fsdg7psVUC6rylvOYodnTwoZinMY/x3l
         vsdZ84T1jxCZ72DAOX0lIQZGLgeLXoSHbL1HMqHZ6JcJOjuoA5aJgljAmFqgYH1liE76
         MjYayymOFIjmozJEIRG9foADVDKkilCsO1WolqCp/87KFe2VLUURZg3UHaz8X3jANRsm
         BLAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E7TKNXhRipJUTqMYe2UTwT/qent8J6TY/ZdzhmQEjWA=;
        b=dkjjmFZBfZdsQ6qL+1gkt5dqjB5GJr+M7ZxtsJkVN5hPYLpeL9VyD/LqpkQkJIpwqi
         yBEVPz6ptnUAQtOZ3Zw8cofZv3q29usEVHu/P45DB6D8MrZoqLFk1QHssIxs49/8u3oV
         oiiraMAkbDUMr89/5rSX9vr9Uh6e4sc3QpzTtAiPOWqe/vFC2C7ezthq3IvYfxbY278r
         d6imGDp3Bo4yxNdEMx6bd4rr6UIjgy5WvVr7ZTHl0hftoYc+tSsutV3Wa+FBMqIWc1/F
         aXfhlUmhlx/t94Xeb2s1MWt7xZpa8M0DTxRKulszNTSm6UoW0azhnuHQigRkgSIPpM8/
         bR8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=U+pA9brC;
       spf=pass (google.com: domain of michael.chan@broadcom.com designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=michael.chan@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E7TKNXhRipJUTqMYe2UTwT/qent8J6TY/ZdzhmQEjWA=;
        b=g+8Qx4gLd9WsuZnPhsXgSe+xvxqwoI4JpQUiPqRcq9+/Lh7ANqkn7p0c4OPN/aCae6
         6Ok+ao2gXmPEecHOlyUVxGE0juVAD1gSMgeN/rkitBGLOL5BPO903v3ukCZVoocNe9Iq
         OXYHET/0DF3XeH5Mwx8/bzPFU2ZtvRm6XQjyIY/0RVD+EERGucMGAv29eic4acfLkv8W
         Vi/GeIXyhzo1ImHKQR+oVolaY+JWM0igxlw4IZqG5GESlsoKjVVnvzT+uw5Jvq7zJl5K
         XBrB5x6Ga+ihQAKh+K2A9OEzy95weMcWCHi4C1osNevIkWxjLOrZ8JmNOHrrM1N03dC/
         M4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E7TKNXhRipJUTqMYe2UTwT/qent8J6TY/ZdzhmQEjWA=;
        b=Lu//UdSeQC/k0rdA9EyjSQG4J5EgV8bB6GIMPkTNwNWS9kwPaXHV8vOnCl8pgP2bAS
         NUskaD62U3b0uSMY7n71vJsRvmQ2Hf/lnwt0Hzmi1elTaAOn1nVxgCaLu5EThVXIZoKt
         tnWp+Z72ZEbA+8ZUtWfJzPT0bIE2iSA/6h0lf64vRcEYN1ss2n5sTkORrrR1RIqI24lq
         q4DcJMm+oJmzCYx9vTeK5BE4UMgsqV9EhacYmDs2hc53OcPhiYt3ivUiLxesDCDb+H0s
         cMM65FIqR25PnKsw1pCEu485A+d35z6Mk+zjcnk7eeI/nxRfir7nq4e5Lcr587YVQEHa
         Mviw==
X-Gm-Message-State: AOAM530nvyOZKeqUJLc3FsxifWAA9yyD2ISooieCZpkWkpUi4z19neG7
	N5MEUcQHsV5cb/cF/KvTJN4=
X-Google-Smtp-Source: ABdhPJwWAizo02eFCCcZ6f0rPR2mp9nz528CO+P20sv8uvop/3I89rikqLeeYN2x8LJru7JU3sR+MQ==
X-Received: by 2002:a9d:649a:: with SMTP id g26mr9391111otl.92.1627434214418;
        Tue, 27 Jul 2021 18:03:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1403:: with SMTP id v3ls149145otp.7.gmail; Tue, 27
 Jul 2021 18:03:34 -0700 (PDT)
X-Received: by 2002:a9d:7f98:: with SMTP id t24mr17943243otp.366.1627434213959;
        Tue, 27 Jul 2021 18:03:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627434213; cv=none;
        d=google.com; s=arc-20160816;
        b=kb7baxYnZrYPLndMpYWQIAF1BwdM1wrqWSJNOonRz+Wy25YvK/qiIjPFOFUL2N6Qnb
         DmIxun5hLJmgDRdD29f4K6h2+VYNZ0LLQMc6Ey+4wxCO/vws4os0ILa1qSBWbzxApBuY
         NoppT+YLBNpRcw2LFGh35WT66oVMbOWuCq5HptdkPrH8E+M1jkPD7+/l/9mG3UnUqY6+
         9JIjx5miOmIo4lADZnWTj98QsCv22fvNSuGjD+F8p1zK2wdbFcIVKIj+yxw3oRJDEpK7
         0XQGkpL4BxY7rbkghdsyE6+UE3Ea75+Hae34Mlj5YTlgjmDO13FBiS7LtphgdfyL1Xnw
         mDhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XeWQUMIlCoAPG4WPhesY+Kp7nlHqQHSZh33Zn747wP0=;
        b=v4xQNGqYJCwQYHM2jnLXQl55W54xlJDJlS0aKcONogx+rk36tTh9FcRtTF17MHi9Fr
         FwLvv72X8xEPDHP6ZGID55AftgNyu4/d6WcfEEQa9ksU07JbCbZD46qx6TntZfECD1FK
         EBLD7DUhn4V4btGa3z3kGuHELwLgcfrkCjOULv7ylX52WWiN53CURIJdSgLyBwn5BN9H
         8rcb6VHMBcKlQnNUflAsHspz0wOgx2k6i4G1KB9AcNb613RgUUmCdiuSbEaM8llk8BMs
         IbxbfpTI0Cjo7SKwY7A3Cp+V3p//2a6lyh7LqadoqfjDIFvddjdKSf26bZ7d2tK5GvSa
         f4ow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=U+pA9brC;
       spf=pass (google.com: domain of michael.chan@broadcom.com designates 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=michael.chan@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com. [2607:f8b0:4864:20::82b])
        by gmr-mx.google.com with ESMTPS id m17si472430otk.1.2021.07.27.18.03.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 18:03:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael.chan@broadcom.com designates 2607:f8b0:4864:20::82b as permitted sender) client-ip=2607:f8b0:4864:20::82b;
Received: by mail-qt1-x82b.google.com with SMTP id l24so227205qtj.4
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 18:03:33 -0700 (PDT)
X-Received: by 2002:ac8:7515:: with SMTP id u21mr3011194qtq.80.1627434213425;
 Tue, 27 Jul 2021 18:03:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210727205855.411487-1-keescook@chromium.org> <20210727205855.411487-7-keescook@chromium.org>
In-Reply-To: <20210727205855.411487-7-keescook@chromium.org>
From: "'Michael Chan' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 18:03:22 -0700
Message-ID: <CACKFLinDc6Y+P8eZ=450yA1nMC7swTURLtcdyiNR=9J6dfFyBg@mail.gmail.com>
Subject: Re: [PATCH 06/64] bnxt_en: Use struct_group_attr() for memcpy() region
To: Kees Cook <keescook@chromium.org>
Cc: linux-hardening@vger.kernel.org, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Keith Packard <keithpac@amazon.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>, 
	open list <linux-kernel@vger.kernel.org>, linux-wireless@vger.kernel.org, 
	Netdev <netdev@vger.kernel.org>, dri-devel@lists.freedesktop.org, 
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org, 
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000036074005c8248ecf"
X-Original-Sender: michael.chan@broadcom.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=google header.b=U+pA9brC;       spf=pass
 (google.com: domain of michael.chan@broadcom.com designates
 2607:f8b0:4864:20::82b as permitted sender) smtp.mailfrom=michael.chan@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
X-Original-From: Michael Chan <michael.chan@broadcom.com>
Reply-To: Michael Chan <michael.chan@broadcom.com>
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

--00000000000036074005c8248ecf
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 27, 2021 at 2:01 PM Kees Cook <keescook@chromium.org> wrote:
>
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memcpy(), memmove(), and memset(), avoid
> intentionally writing across neighboring fields.
>
> Use struct_group() around members queue_id, min_bw, max_bw, tsa, pri_lvl,
> and bw_weight so they can be referenced together. This will allow memcpy()
> and sizeof() to more easily reason about sizes, improve readability,
> and avoid future warnings about writing beyond the end of queue_id.
>
> "pahole" shows no size nor member offset changes to struct bnxt_cos2bw_cfg.
> "objdump -d" shows no meaningful object code changes (i.e. only source
> line number induced differences and optimizations).
>
> Signed-off-by: Kees Cook <keescook@chromium.org>

Thanks.
Reviewed-by: Michael Chan <michael.chan@broadcom.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACKFLinDc6Y%2BP8eZ%3D450yA1nMC7swTURLtcdyiNR%3D9J6dfFyBg%40mail.gmail.com.

--00000000000036074005c8248ecf
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
xV4Em+0wQoEIR2kPG6yiZNtUK0tNCaZejYU/Mf/bzdKSwud3pLgHV8ls83y2OU/ha9xgJMLpRswv
xucFCxMsPmk0yoVmpbr92kIpLm+TomNZsL++LcDRa2ECAwEAAaOCAdowggHWMA4GA1UdDwEB/wQE
AwIFoDCBowYIKwYBBQUHAQEEgZYwgZMwTgYIKwYBBQUHMAKGQmh0dHA6Ly9zZWN1cmUuZ2xvYmFs
c2lnbi5jb20vY2FjZXJ0L2dzZ2NjcjNwZXJzb25hbHNpZ24yY2EyMDIwLmNydDBBBggrBgEFBQcw
AYY1aHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyM3BlcnNvbmFsc2lnbjJjYTIwMjAw
TQYDVR0gBEYwRDBCBgorBgEEAaAyASgKMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2Jh
bHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAwSQYDVR0fBEIwQDA+oDygOoY4aHR0cDov
L2NybC5nbG9iYWxzaWduLmNvbS9nc2djY3IzcGVyc29uYWxzaWduMmNhMjAyMC5jcmwwJAYDVR0R
BB0wG4EZbWljaGFlbC5jaGFuQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNV
HSMEGDAWgBSWM9HmWBdbNHWKgVZk1b5I3qGPzzAdBgNVHQ4EFgQUz2bMvqtXpXM0u3vAvRkalz60
CjswDQYJKoZIhvcNAQELBQADggEBAGUgeqqI/q2pkETeLr6oS7nnm1bkeNmtnJ2bnybNO/RdrbPj
DHVSiDCCrWr6xrc+q6OiZDKm0Ieq6BN+Wfr8h5mCkZMUdJikI85WcQTRk6EEF2lzIiaULmFD7U15
FSWQptLx+kiu63idTII4r3k/7+dJ5AhLRr4WCoXEme2GZkfSbYC3fEL46tb1w7w+25OEFCv1MtDZ
1CHkODrS2JGwDQxXKmyF64MhJiOutWHmqoGmLJVz1jnDvClsYtgT4zcNtoqKtjpWDYAefncWDPIQ
DauX1eWVM+KepL7zoSNzVbTipc65WuZFLR8ngOwkpknqvS9n/nKd885m23oIocC+GA4xggJtMIIC
aQIBATBrMFsxCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTEwLwYDVQQD
EyhHbG9iYWxTaWduIEdDQyBSMyBQZXJzb25hbFNpZ24gMiBDQSAyMDIwAgwQeU+Y6hbenPzRMJsw
DQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIEIAytmRVs3iqumAGYPxtXBXNDPjf2yXEt
NItAzRh0/A93MBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIxMDcy
ODAxMDMzM1owaQYJKoZIhvcNAQkPMVwwWjALBglghkgBZQMEASowCwYJYIZIAWUDBAEWMAsGCWCG
SAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQowCwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQC
ATANBgkqhkiG9w0BAQEFAASCAQDbA729KptGpP+Nuqj8l5Ge0wUTJoac1/fcEa24ANVLeiYZbK8O
ZDbNWnvAZ2x+faY3zejhYQQOOa03PBWZJ6Pdzh1oBsfN82DyN0vemF51ADwVKZh416Zo3d4htVzd
RXCkH5Y345ZCaaNnYNQ4pNNGTMtzzsZa1gmitKBccg5WH5LrruzMzv6uEJaPIGlialvNXfNUZnc6
lrO2ZhH+E+l05NLUHipaHv2z/HFr8Z/NTTqthHP+wjmbi0TTtCpFUQc5tf5zZVc7HoITwGuj2/bD
OJwZGNS1ArPflol7zJnVk4MqRvALwKWTHMmF8iPFuj4pI95ls14ipsVfYhgWhYY6
--00000000000036074005c8248ecf--
