Return-Path: <clang-built-linux+bncBD5IXJ5YWYPRBAH63WAQMGQE6PE4EWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id C4CCB324E4B
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 11:42:09 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id s187sf5577925ybs.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 02:42:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614249729; cv=pass;
        d=google.com; s=arc-20160816;
        b=oFAO5RHnhzpogzFm+EXq8WZIAQuW5vtqQmFUfA8kmIOkzygJJs2lojO6yGH9m8qwIe
         sHmEo3eYbPfRDUxpkRYscqL9OqF832UcU+KXwcc3PTQnkkOOSrKZ3BSkbKxh+I9JtNf5
         X70lh1FxjlkoDdknpmX3nZwkEPCRKxf5eZK9oeCzvmxqGdBvdoxr2rxBralWSqSH9oFC
         SWDiqRo/5GhBF4B+p+LBkdYINWaNVbqzcJW6i+M83wnCbHRvPMS+B1ZVH2aiLaKfDLzb
         /mLX0vmlkNFzeO5D1NkEfhBm/n+mSBwMzyC64+Su6VM+asNBe4NTHMN3IqXewQ+OTLFS
         N8ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=/sMH2xNxYQ/uaCkLO1rl/Ng0+zGVl/Ro7LC3iNEMU/Q=;
        b=xud6ytUEEYUZ9i6I+oEYxb/QxzrL6QKnyFrEPT68W/SVk4Qhsak8G4Jac9WV6gLXSP
         qFBumKuf/AwSBSLlMaetCGQTM+aCLn6cwbwi7qn4OKhFPMiLA7G0mdpNP3a7FwDUUrbN
         L3jyNEb+fOU3ZeyUSvBdJE9jAe/MHfbN1dNIRVDz0Gudh0c4JgtFQ86FDLDpTc9D/8mB
         ll/DnGY3MX2elDmGrMttoJBHnJj6xm/epuDhk4swAyqMfEwRvQopbhE85gJB3oWCHa8A
         KPC2wPy9nGG6R7V4lLJRQqNnPpMIGcW3y5Co/LUh+FgezfcIwEQBzlbmWU9QKehKHrw3
         7+CA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MujttOYA;
       spf=pass (google.com: domain of philmd@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=philmd@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/sMH2xNxYQ/uaCkLO1rl/Ng0+zGVl/Ro7LC3iNEMU/Q=;
        b=j0/UjG9oRvUXhE6Qk/a4XnxyvqKfLom0/A/U8YwnAOyCbbVF73WQDfTCVQ2JiVLKUL
         M95l1NKGUcrFas7gQSMsOhoiBFH5ZALNbv7tQqr1RzBG7RgQKNjYx/N2joSHMH8c3b72
         yqJ33Pzsj1ngq7XpFKrjEhwBhSg7Ijf8hz+IG24nma6iLSJCmcQyzmuQd1snhSulEKaW
         owAarJbz6QPfpLK82oS+M/D8TaH4QZZs1AynzqgTzlc/Fbfbvix4vqVC/zpvyEJnWgwe
         f8pd9hJptzZXLDvKQarhG1/IYLb587/YDKD7h07dNcBfFBzXf6cRUL4D27idiiZzB4JS
         2mgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/sMH2xNxYQ/uaCkLO1rl/Ng0+zGVl/Ro7LC3iNEMU/Q=;
        b=I0WLrfN/qXZSCcWEk0Pt7w7ilWKtRcW6cz96OZs/kZU3jIsuBk8BkNgTGwt9qdNKDi
         CiNichx6rTtbRtf3VrF+2NSqyaemE8vdwBP+EQ2YSZe/2oKaI0nAxoco4nTa4HOGxVpo
         sVI+qhohJxbkxXLgvHxegHO6ZARpx5mB3ICAwbuBkwanJOFkBfsAP/Wpx3LcnPTNYRfe
         X6ioIdflqO4AzlpOFqNQvak2Yd1I8F9Hbh+ZMDYfbRR/kKJMVqvEg7ji4GtVhUF4Y8uG
         SPD6aL3Tz1o9R7a0IXYoQ2DrmNjjzxSVDnikDh82DxkutLZlyDOYOAhyMWMd23y/khTF
         4ugA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EskQ1eHUeYLTqmNMfEcXe2bjuOcWlil/NDNtWs/KMrRVDzzkw
	wvU66LNwktmz9zvhtF+KCMg=
X-Google-Smtp-Source: ABdhPJxnrAmSWubGPBC/HNUEEOffNOvO8AIxbW1txNErMvQN6NwK5qSkPhzSiH9emQbj7eSI7rd5qw==
X-Received: by 2002:a25:76c3:: with SMTP id r186mr3106366ybc.269.1614249728826;
        Thu, 25 Feb 2021 02:42:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d8c7:: with SMTP id p190ls1214495ybg.6.gmail; Thu, 25
 Feb 2021 02:42:08 -0800 (PST)
X-Received: by 2002:a5b:7cd:: with SMTP id t13mr2932383ybq.417.1614249728319;
        Thu, 25 Feb 2021 02:42:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614249728; cv=none;
        d=google.com; s=arc-20160816;
        b=uy8qGf2yuJTUrlU3idhRbvW+bw/hYPRYCHX9IfMgUh+t9BDj4j0nUq8tM8aCO5h+oE
         2YUnZQK0Ovk3UTBs8KFO2tJXTUYCRrOvGzmmc+iGxZsr4XgQCm2A2+XwkAulzX2rOVif
         gts0pgjaeUzG0HHu3D6m/LnG/R8/RlfQaooHh6pLQQ73SevWnIlP9xS1lnZND4N71VNC
         AQXNXzluW/1ZbP7j6g6CPz+cj0X0VYYX177zfs++wiKH2SZzWzECugT07l3Ey6X2ZyDz
         Nn+uSPpIRongp4sdageZlHAdtknTrsf7TnZMn0u2D7oanGbmTCiKNgFWx0jqXeIWIVyt
         oeWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=wLELNZ5FMw6J4z0iKytGOymiuDW68WgnsMFftjnmb3U=;
        b=mjzh0Pjj+5Rw9iUqQG5U3CRkQZwBsTkrnBYBGawNtHs7aEZtLDvtGaHEU92+ubbSkQ
         BxLAVyq7//19lGvHKnmp3rSdQ+Ly4nKCi2QAshNRMFvWpV0h6m1F8LrFdTSAkdqqLti0
         24EYcbN0KMFKwQn048/Twj1Ko07QxSl1EGGdTi0HyizfMeThZv0jMP/pjlTzNPB20WPj
         x60qoSIsWgVa192Qq2OdvAHayi6eprAtuO1blt0ZX07mCk3KA/Kkxwq9OvoRUdWlbk07
         L3+qmyYN3McRKvTkxol/B0MnvpIv10+JhFwk6QTUNnakc6MKnuN88GNBRGYg01tyxnRI
         KK5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=MujttOYA;
       spf=pass (google.com: domain of philmd@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=philmd@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id i194si293811yba.2.2021.02.25.02.42.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 02:42:08 -0800 (PST)
Received-SPF: pass (google.com: domain of philmd@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-263-sYn3FP69MXevb8qh4rK-Rg-1; Thu, 25 Feb 2021 05:42:04 -0500
X-MC-Unique: sYn3FP69MXevb8qh4rK-Rg-1
Received: by mail-wm1-f69.google.com with SMTP id f185so623564wmf.8
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 02:42:03 -0800 (PST)
X-Received: by 2002:a7b:c956:: with SMTP id i22mr2670939wml.85.1614249722767;
        Thu, 25 Feb 2021 02:42:02 -0800 (PST)
X-Received: by 2002:a7b:c956:: with SMTP id i22mr2670929wml.85.1614249722656;
        Thu, 25 Feb 2021 02:42:02 -0800 (PST)
Received: from [192.168.1.36] (68.red-83-57-175.dynamicip.rima-tde.net. [83.57.175.68])
        by smtp.gmail.com with ESMTPSA id q140sm8013865wme.0.2021.02.25.02.42.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 02:42:01 -0800 (PST)
Subject: Re: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
To: Nathan Chancellor <nathan@kernel.org>, Gabriel Somlo <somlo@cmu.edu>,
 "Michael S. Tsirkin" <mst@redhat.com>
Cc: Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 qemu-devel@nongnu.org, clang-built-linux@googlegroups.com,
 Sami Tolvanen <samitolvanen@google.com>
References: <20210211194258.4137998-1-nathan@kernel.org>
From: =?UTF-8?Q?Philippe_Mathieu-Daud=c3=a9?= <philmd@redhat.com>
Message-ID: <6ac57db8-3866-297a-dc37-87c565b51ee2@redhat.com>
Date: Thu, 25 Feb 2021 11:41:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210211194258.4137998-1-nathan@kernel.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: philmd@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=MujttOYA;
       spf=pass (google.com: domain of philmd@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=philmd@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 2/11/21 8:42 PM, Nathan Chancellor wrote:
> fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
> which violates clang's CFI checking because fw_cfg_showrev()'s second
> parameter is 'struct attribute', whereas the ->show() member of 'struct
> kobj_structure' expects the second parameter to be of type 'struct
> kobj_attribute'.
>=20
> $ cat /sys/firmware/qemu_fw_cfg/rev
> 3
>=20
> $ dmesg | grep "CFI failure"
> [   26.016832] CFI failure (target: fw_cfg_showrev+0x0/0x8):
>=20
> Fix this by converting fw_cfg_rev_attr to 'struct kobj_attribute' where
> this would have been caught automatically by the incompatible pointer
> types compiler warning. Update fw_cfg_showrev() accordingly.
>=20
> Fixes: 75f3e8e47f38 ("firmware: introduce sysfs driver for QEMU's fw_cfg =
device")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1299
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/firmware/qemu_fw_cfg.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)

Reviewed-by: Philippe Mathieu-Daud=C3=A9 <philmd@redhat.com>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/6ac57db8-3866-297a-dc37-87c565b51ee2%40redhat.com.
