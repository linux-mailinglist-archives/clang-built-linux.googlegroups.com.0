Return-Path: <clang-built-linux+bncBDRYNGWEWYDBB3P57P5AKGQEM53KT7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53e.google.com (mail-ed1-x53e.google.com [IPv6:2a00:1450:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8D9268409
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 07:26:05 +0200 (CEST)
Received: by mail-ed1-x53e.google.com with SMTP id i23sf838150edr.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 13 Sep 2020 22:26:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600061165; cv=pass;
        d=google.com; s=arc-20160816;
        b=reJhbqiIgMM76q/uWUv3+wFQDBdrSs9zZeUKy3h8JU9hUgCHFT42EfXbpXwoFTCnQT
         zmsVT/F4+0LGY2/GXjJFxOmKHO6tzM1MDqRPe7y1HIMCfVUKQT0z7xe0O/ZRQz1dy//o
         aeAhDdsRGGjhLkqO04Q7J1Oux7BcTSiXyXVM2UQGZeccw2+xfUNBXuKcmkd8UDfOdwRU
         vjWVcRjITJKurawTG8BXR85rSEnRDpX2w5pdwBvW1UsrnEEMxOQbRll/iAl4gmKwu+nK
         DfOlkMQ4hew/dO9YpRoG7vfqtSEEbVwR3WKlnqff9rcNE6EOf0T9NCWkwKQgEI0AVk1z
         5Wuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:subject
         :user-agent:references:in-reply-to:message-id:date:cc:to:from
         :dkim-signature;
        bh=N2XbyCwBrl8g0+CDs9V1aef8tq75XmL5fh2EFzWt/eQ=;
        b=kJ5zm8H5DnM/pHTIbwihG843k7BmRqj2Hh1cumvza56Ss7n5YdlyCdmPsUScBW8Jb6
         nGUqOnV8TZzTp5UgKGuJBwL2YDrDetR0HrUa5xy5rpiebVjNqSIZCLoLczE8XVHIW+RN
         tVfbbHq7GSCq+8TruljJJXW/3IIsFLRwzURCWdeFv9atbHlpuZ5YiQG4e8/VnFA2DoCD
         FJymhd6bH9N9Vo1WE1wO9XtGMwPUmQMvSIATWT4TjFCMSM2vVEeK6ligGFUNOfZn/G1n
         YmZtoBPxuHlbzcQuayygB+myHoOtZh264arYLfWtqcH0r+hVg0B3265JAyp36VacF0IV
         KN1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=Z3rx5oM4;
       spf=pass (google.com: domain of arend.vanspriel@broadcom.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=arend.vanspriel@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:date:message-id:in-reply-to:references:user-agent
         :subject:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=N2XbyCwBrl8g0+CDs9V1aef8tq75XmL5fh2EFzWt/eQ=;
        b=E76fEBA4D2gddmmmMVGwTXns4VtLUHC4aBGw/iETm1Z6iNKy56kdwu4V6g7iaTOPci
         xg7zY1WaJwKKfTerbnIaqL80dKQHmpyMCfkU0XQtxYGqwUceGPb++If7RT4qPAziY6z2
         DN2i951aKY7RAt6woaQSmsAYvPAlFigGcDshCeHu0NtMl0LQ9jnt1b53CeBHLpxFxnq/
         Ynx6LFMZiyr7gqgGcAFrTWmolcTYSwpX4KXJrDSk6rfSlEu0V2p/5jqTOPFs74ioW3h2
         M3vSROZ+uKHq9/0SsX7q0nDN17TiVr8gn1eL5freOgQZ6qm0qn25s1drmaUPs3CBan3e
         J6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:date:message-id:in-reply-to
         :references:user-agent:subject:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N2XbyCwBrl8g0+CDs9V1aef8tq75XmL5fh2EFzWt/eQ=;
        b=KlP1KFBcQJs69lpj3rSzWGpHv3DMo51PnBZ7l8WqZfYtTksajF5PRI7xjoyPIpwPl+
         4Ta/RHZafHITEOX1q/x99QVHqN6FVa49pKyNyfMSWgDPKCizEhR3AnZd+r8A38blLWJV
         1/KhxiGHZ3+Sh79WXN57UQgOAWBJSaWTtYWyjZkveATdu2wTmu31ejk2jIu49BXaZzER
         hOQEMIZQRXoDnT+wviGvsggkQJtwD93rJnku5S50GJJoMtbT2V/fdGayQwDuXNbHh8hZ
         EwQcujAqSFEYf22GrhSZ5TEz4lAJqlmIxZ1qbBOSBNdvd2ugvHSiuILJYo65kG4i8eQf
         UW2A==
X-Gm-Message-State: AOAM531PtyccO5HA2IMV8v+PvB5dB+c7flUkak0ls+l0tkgB3asCQMbd
	pMgrraXIRQehgv1YF82DbG4=
X-Google-Smtp-Source: ABdhPJyaK3K/uda5JUjJmdv1GBPonSjf7SKxCp5EOhIWr+BcCj2y8y/7jz2MRjLhonnZsvdg9hsdRA==
X-Received: by 2002:a17:906:a293:: with SMTP id i19mr13230339ejz.428.1600061165658;
        Sun, 13 Sep 2020 22:26:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bf49:: with SMTP id g9ls9582320edk.1.gmail; Sun, 13 Sep
 2020 22:26:04 -0700 (PDT)
X-Received: by 2002:a05:6402:2c7:: with SMTP id b7mr15899007edx.125.1600061164850;
        Sun, 13 Sep 2020 22:26:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600061164; cv=none;
        d=google.com; s=arc-20160816;
        b=X7tK3pS29HTwN6Mv8760RI8++GYowmTRmwbMSG9ZiqIAvWJiy6KuZm9A8FYmYY5Go+
         d8NIcKYhjvlhw90R6CUxbqeVIY3u7ll+D/AacPtTXOxnrutIZSvbbyLSEXO5y9DHASSZ
         IGg/rKR9j1R2bZHmRb+PaZp5z9oZJRbwd+iwF8pnh/zkYVEApL0i8D4XDtsveRk/ROIL
         RJOETcFFq/3toBdWn1c3fi4T24HAxX/jJpFPv8rrOD6fG+wMqJtUWezyyXzJRwEZKm1Y
         8EXggY4nf59VajOLxX9Ymtfrr9c1u4iFP4x/Zqy2W+cY5O/PatR0c6ZnESWlbRSBSEeb
         8i+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:user-agent:references:in-reply-to:message-id
         :date:cc:to:from:dkim-signature;
        bh=MOSQkZMckAa9kihJFpBx1xFJZC7S1DCDeMACYeRT/UQ=;
        b=BpMl+y8OTI2xA6GygnNACjEEJfCaIDFCcvglDau1aGAwENs28c89p6XUZn6F9alFyF
         aQwbBKcfZb3ZVtB28YvwUidrSr7FmeEoJgBmKBLloKuqQ8xiMMwbnHbBsN9sGs/s/Cfc
         VrcqIyu5qwoeoVULdCbRPq3rwJckMmpQQ3wqzb7WWGOjNHGKcX1+xD7lwlA72emP8s4z
         Qa4c7ENMe+KOC/L50JzxXnC+SAoliq8FoNuA1F4ug2ibPclFX+uieBjh70HT8YcFRIVh
         wRaqqyCOG0yIWR7HPOsBVXP5vOCvKcHC+iXRzmEXP1QKzbqzrRhmY71w/7fQKNZm/0hy
         5eew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@broadcom.com header.s=google header.b=Z3rx5oM4;
       spf=pass (google.com: domain of arend.vanspriel@broadcom.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=arend.vanspriel@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id f17si296397edx.5.2020.09.13.22.26.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 13 Sep 2020 22:26:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of arend.vanspriel@broadcom.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id g4so16285958edk.0
        for <clang-built-linux@googlegroups.com>; Sun, 13 Sep 2020 22:26:04 -0700 (PDT)
X-Received: by 2002:a50:d802:: with SMTP id o2mr15737575edj.152.1600061164453;
        Sun, 13 Sep 2020 22:26:04 -0700 (PDT)
Received: from [192.168.178.38] (f140230.upc-f.chello.nl. [80.56.140.230])
        by smtp.gmail.com with ESMTPSA id m10sm3464633ejx.123.2020.09.13.22.26.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Sep 2020 22:26:03 -0700 (PDT)
From: "'Arend Van Spriel' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: <trix@redhat.com>, <franky.lin@broadcom.com>, <hante.meuleman@broadcom.com>, <chi-hsien.lin@cypress.com>, <wright.feng@cypress.com>, <kvalo@codeaurora.org>, <davem@davemloft.net>, <kuba@kernel.org>, <natechancellor@gmail.com>, <ndesaulniers@google.com>, <smoch@web.de>, <dan.carpenter@oracle.com>, <double.lo@cypress.com>, <digetx@gmail.com>, <frank.kao@cypress.com>, <amsr@cypress.com>, <stanley.hsu@cypress.com>, <saravanan.shanmugham@cypress.com>, <jean-philippe@linaro.org>, <linville@tuxdriver.com>
CC: <linux-wireless@vger.kernel.org>, <brcm80211-dev-list.pdl@broadcom.com>, <brcm80211-dev-list@cypress.com>, <netdev@vger.kernel.org>, <linux-kernel@vger.kernel.org>, <clang-built-linux@googlegroups.com>
Date: Mon, 14 Sep 2020 07:26:02 +0200
Message-ID: <1748b13c210.279b.9b12b7fc0a3841636cfb5e919b41b954@broadcom.com>
In-Reply-To: <20200913143522.20390-1-trix@redhat.com>
References: <20200913143522.20390-1-trix@redhat.com>
User-Agent: AquaMail/1.26.0-1689 (build: 102600004)
Subject: Re: [PATCH] brcmfmac: initialize variable
MIME-Version: 1.0
Content-Type: multipart/signed; protocol="application/pkcs7-signature"; micalg=sha-256;
	boundary="00000000000058b0c105af3f456c"
X-Original-Sender: arend.vanspriel@broadcom.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@broadcom.com header.s=google header.b=Z3rx5oM4;       spf=pass
 (google.com: domain of arend.vanspriel@broadcom.com designates
 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=arend.vanspriel@broadcom.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=broadcom.com
X-Original-From: Arend Van Spriel <arend.vanspriel@broadcom.com>
Reply-To: Arend Van Spriel <arend.vanspriel@broadcom.com>
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

--00000000000058b0c105af3f456c
Content-Type: text/plain; format=flowed; charset="UTF-8"

On September 13, 2020 4:35:44 PM trix@redhat.com wrote:

> From: Tom Rix <trix@redhat.com>
>
> clang static analysis flags this problem
> sdio.c:3265:13: warning: Branch condition evaluates to
>  a garbage value
>        } else if (pending) {
>                   ^~~~~~~
>
> brcmf_sdio_dcmd_resp_wait() only sets pending to true.
> So pending needs to be initialized to false.

True. However, I prefer to fix it in brcmf_sdio_dcmd_resp_wait() and say:

*pending = signal_pending(current);

Regards,
Arend

> Fixes: 5b435de0d786 ("net: wireless: add brcm80211 drivers")
> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
> drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1748b13c210.279b.9b12b7fc0a3841636cfb5e919b41b954%40broadcom.com.

--00000000000058b0c105af3f456c
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
pra5sIx/TR6gNtLG9MpND9zQt5j42hInkP81vqu9DG8lovoPMuR0JVpFRbPjHZ07cLqqbFMVS/8z
53iSewIDAQABo4IB0zCCAc8wDgYDVR0PAQH/BAQDAgWgMIGeBggrBgEFBQcBAQSBkTCBjjBNBggr
BgEFBQcwAoZBaHR0cDovL3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NwZXJzb25hbHNp
Z24yc2hhMmczb2NzcC5jcnQwPQYIKwYBBQUHMAGGMWh0dHA6Ly9vY3NwMi5nbG9iYWxzaWduLmNv
bS9nc3BlcnNvbmFsc2lnbjJzaGEyZzMwTQYDVR0gBEYwRDBCBgorBgEEAaAyASgKMDQwMgYIKwYB
BQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAw
RAYDVR0fBD0wOzA5oDegNYYzaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9nc3BlcnNvbmFsc2ln
bjJzaGEyZzMuY3JsMCcGA1UdEQQgMB6BHGFyZW5kLnZhbnNwcmllbEBicm9hZGNvbS5jb20wEwYD
VR0lBAwwCgYIKwYBBQUHAwQwHwYDVR0jBBgwFoAUaXKCYjFnlUSFd5GAxAQ2SZ17C2EwHQYDVR0O
BBYEFHAaaA+cRo3vYiA6aKVu1bOs4YAYMA0GCSqGSIb3DQEBCwUAA4IBAQCYLdyC8SuyQV6oa5uH
kGtqz9FCJC/9gSclQLM8dZLHF3FYX8LlcQg/3Ct5I29YLK3T/r35B2zGljtXqVOIeSEz7sDXfGNy
3dnLIafB1y04e7aR+thVn5Rp1YTF01FUWYbZrixlVuKvjn8vtKC+HhAoDCxvqnqEuA/8Usn7B0/N
uOA46oQTLe3kjdIgXWJ29JWVqFUavYdcK0+0zyfeMBCTO6heYABeMP3wzYHfcuFDhqldTCpumqhZ
WwHVQUbAn+xLMIQpycIQFoJIGJX4MeaTSMfLNP2w7nP2uLNgIeleF284vS0XVkBXSCgIGylP4SN+
HQYrv7fVCbtp+c7nFvP7MYICbzCCAmsCAQEwbTBdMQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xv
YmFsU2lnbiBudi1zYTEzMDEGA1UEAxMqR2xvYmFsU2lnbiBQZXJzb25hbFNpZ24gMiBDQSAtIFNI
QTI1NiAtIEczAgxR3m7Pj6LvQiWjJy0wDQYJYIZIAWUDBAIBBQCggdQwLwYJKoZIhvcNAQkEMSIE
IFjfz38J4ft3KTVjvYexEeRqwYn05w3hqViaCI3/hG6rMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0B
BwEwHAYJKoZIhvcNAQkFMQ8XDTIwMDkxNDA1MjYwNFowaQYJKoZIhvcNAQkPMVwwWjALBglghkgB
ZQMEASowCwYJYIZIAWUDBAEWMAsGCWCGSAFlAwQBAjAKBggqhkiG9w0DBzALBgkqhkiG9w0BAQow
CwYJKoZIhvcNAQEHMAsGCWCGSAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQCEw0aVrmYr/kNR2nrm
wpArOrRFTvt4j+z/oVag2X4kQIe7N3bIDj+Bn/Et1Wac24jPYL2WHnA0Sc4e6djcIuR8ySl7pjLM
S6xwvSvOci0Ct3RW/UTg+bZwKLYHIJP+cKVXMje8+R65Eg5vnk2JI6u5McgmaDqAayHPqkym+Q5t
ENmIoZCUxren+jVtKaS4x0tOuGoc0+mFpZsoBmgrU2vuzal6SMAocfxUshWI+QszDTVbGDwsGm7R
GHuiIL2loy5a9hjgifpgYbvQ9SCSILew7N+dDKVI160ZVF4u1yTvmv6nmlA8Td2ASLUOSfLCs8eO
eTOUxAnR1MiwaavZ9Ke1
--00000000000058b0c105af3f456c--
