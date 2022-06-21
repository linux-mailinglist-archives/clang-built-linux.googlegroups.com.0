Return-Path: <clang-built-linux+bncBCT6537ZTEKRBAUGY2KQMGQE6S5OUQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-x113c.google.com (mail-yw1-x113c.google.com [IPv6:2607:f8b0:4864:20::113c])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AE0552D1B
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 10:36:20 +0200 (CEST)
Received: by mail-yw1-x113c.google.com with SMTP id 00721157ae682-3178996424dsf82145837b3.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jun 2022 01:36:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1655800579; cv=pass;
        d=google.com; s=arc-20160816;
        b=lT4k1UMVHqXBOh+GLMJKtPO4pywsv6nZyFoMrS3P9rrKBLlJOUDSgGSf6zCW0LiIto
         CbeyOuQKeCaM8k0hrNmU1oxcPCOfJYyAa8n8L4cNryrv8chZ3quWzhT4IbIiuFgCR19g
         sH0TI1236dvyUTC5I1bUuKnA6qSyskGVxqqiI75em6QVPB8JWN0BWSpss7pwUub8q/g9
         kR70q+fAsOO04VpnACyBflBZvIDdAn3BylD8dGS4hd5LbvHym45gW7Eo3NgIIXM0/Fgi
         qbcZRAgMIP8GPc+isvH+uu3uySRiAft9GUjrDKisxabfvuR5THRmIlMNWxfxJ70TuA0P
         91KQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=prESBGku5mtDGXSDeRXnG7WqUTykSMJWEscQqpOCSNo=;
        b=ed9FNqdDvNHE2DlHuhhvoGezflD5fxqjZYsVYwRbtpfBKDxDKDK75jJ2k+zVPuRGeu
         8laWVB+mTDc1I8H6ge5Mxk3KFZ1AQpHPHqgkNB8CGr7f0VfDdSsyNgCmPv3P+vNtXMWY
         tiuVLxamLbhpRn/0IajfbHDhh5gadlwZXdV6/NgGAfqQhV7Is3ZjD+1Bm2GB6sOqG7xL
         qnkjBfSUSQlYZf2VvLPr+O8vjg9PBosYwVpg4sJyCZRE59Rycj5uniwCwReGEiFkr9Zq
         UUnhUjNVTQ25INzgLyGaQbNXzJK+NSjb43Uk02jGe60t9Ae8qYXZuSt73LtIfhz89Vqg
         5x1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=luiiUMRJ;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=prESBGku5mtDGXSDeRXnG7WqUTykSMJWEscQqpOCSNo=;
        b=mLmv2NDRraNZWRCX50rufiwmE0q3vBMCSysX0EsKCQ1LTUZf1ZCOgvZZu1AzYZgUn7
         vK333+eRI97lEVS1eIYXR4pu/haakaNMTztIO49aJrBde7Rym5zHQmxgYfa8asWv94hQ
         dRe2zczJi8bhSL3kS9sjIUrmo/ANyxEya94tTBlvTB9FO7faW1IQA6Bl9gA1nTsyzIQi
         XVez1+cG03yigKGdqi6m2VPyDHFpDqVGWR1zSN4LNBy7KiCWYiM+zA3RquhTvoIGrYGO
         RX/S3pwiJEFjGUDkZKtnh5rNobhPjWQ56KDqgzb8O4H0lpEq2sPEAsWzBln03sCoybel
         1Ruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=prESBGku5mtDGXSDeRXnG7WqUTykSMJWEscQqpOCSNo=;
        b=dfcPxGFjeaAxfkM/31vvGP5aZHGwVMbgp2RgdyaYDeS+n3Y8ryth0htZ/g6cb4et/X
         mNX8KATOCmR55kfTE+XI/uY/xi+F2jTXab3iQqDrXv4ZqWnKnzVhXBASGtI0wKJ8Q9Hj
         f/W23zxXx67U85KxZ/idz8SqINR43nEU8psXDpXUPgX0tlAXOGWynMJ5ghxb8SPvR+Lb
         WxdhbF1+CKJ2ExxB9PqA2uZ+RC2/fofLO6ihmqlvL7u+LhtDkRc90FCeDFgElGTkGIN4
         vAXBhxJikonobvFUMh6lG59bmcB1PF8IpU396Z2xesjOSn1R22hT92poQUdGng+sG6CE
         b8Bw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AJIora8UyymZNjcZ1Z2plTAxfBAxHD1sJ/pESOWOlSCRwTqSKRYi8RgP
	Mb9by4+m2luL3aXNmXI0s+E=
X-Google-Smtp-Source: AGRyM1vklIUu0Bkx7qiKDOgldz9GjzpqgYP5cv+gu4oRKlE0ZvafmrRL46Xciestfoj/cKH4xggcsA==
X-Received: by 2002:a5b:7c9:0:b0:664:9e1b:47ff with SMTP id t9-20020a5b07c9000000b006649e1b47ffmr28956102ybq.545.1655800578984;
        Tue, 21 Jun 2022 01:36:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d845:0:b0:668:f24e:ca9 with SMTP id p66-20020a25d845000000b00668f24e0ca9ls4160441ybg.5.gmail;
 Tue, 21 Jun 2022 01:36:18 -0700 (PDT)
X-Received: by 2002:a5b:246:0:b0:619:5651:3907 with SMTP id g6-20020a5b0246000000b0061956513907mr30868144ybp.190.1655800578485;
        Tue, 21 Jun 2022 01:36:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1655800578; cv=none;
        d=google.com; s=arc-20160816;
        b=mmpKpFSRLk2rLejos4DuafEqYhnt/XlHj/iRUb6XzNwc4d8puhtP3Co0GvnzEc8Mo1
         ntuX47Eqd64hum3ggEGaVmrIDgD8VYxSt+X0gS/XVbijOkQ/ghQJLcV20jnLlMHCS63u
         ECEwDVCp7drQ0bRhR8cCtOQvA2fzZ9V2qJlXIk+CoggWAgpo5ws799vJOMu9Ym82NAG3
         ollHziR+9BJIrW4BiMNwuHlKril8S+TA8m5E4zrBp9Ib/5c5JklnX2Zl36cDhRKkB3sY
         whGxbjx2PXBVIQ4dMb4VAF46sOcDW9y6jcOjNI+S/8Arw+6n2JstKyFQAziTXXnuoDBq
         VN/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XK3NOZN6D3jmWfxj6zcoKoNJkVxGQRZizBH81dPFmTw=;
        b=tf0dDzq5sWhfq6oJAvL1GmwU1hfZTmTMoi4p948G0lCCDqClwXU4KorlZYNxP37Wpp
         SdqCF48BXur6SoLFeh/2XsutkKo5SR+tuo5HHchpZwNCTeODMlUAu8lXPn3Z0w2ASvuf
         woHSzI0LH2K3i1js0ecmJA6D0jreFBFqyB6bnkzZ7Pn8vGE7Vi3oqzGj48JyHjGOK53b
         hBqIXIqymArLTAKoFSsmLYVpl5hzqd937aooLjGAptf9AoA+7WbpH3UpRR50a5YaPbo5
         MxLL2jHAgxI0ECppvUbU8YKdyVy7KJzXbdjyOZnjGJ4twfHrJdjbOrJ3cA2k9VnHCsNw
         hz2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=luiiUMRJ;
       spf=pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com. [2607:f8b0:4864:20::b31])
        by gmr-mx.google.com with ESMTPS id l140-20020a817092000000b0030c2e0694absi491347ywc.2.2022.06.21.01.36.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Jun 2022 01:36:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of naresh.kamboju@linaro.org designates 2607:f8b0:4864:20::b31 as permitted sender) client-ip=2607:f8b0:4864:20::b31;
Received: by mail-yb1-xb31.google.com with SMTP id 23so23241313ybe.8
        for <clang-built-linux@googlegroups.com>; Tue, 21 Jun 2022 01:36:18 -0700 (PDT)
X-Received: by 2002:a25:cb12:0:b0:668:be92:a574 with SMTP id
 b18-20020a25cb12000000b00668be92a574mr20938131ybg.617.1655800578069; Tue, 21
 Jun 2022 01:36:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220620124724.380838401@linuxfoundation.org>
In-Reply-To: <20220620124724.380838401@linuxfoundation.org>
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Tue, 21 Jun 2022 14:06:06 +0530
Message-ID: <CA+G9fYsvY-0ub_CXbb5is0vRLQ9+SaPS8Op=9mZzCkeccUN+mg@mail.gmail.com>
Subject: Re: [PATCH 5.15 000/106] 5.15.49-rc1 review
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, torvalds@linux-foundation.org
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	akpm@linux-foundation.org, linux@roeck-us.net, shuah@kernel.org, 
	patches@kernelci.org, lkft-triage@lists.linaro.org, pavel@denx.de, 
	jonathanh@nvidia.com, f.fainelli@gmail.com, sudipm.mukherjee@gmail.com, 
	slade@sladewatkins.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: naresh.kamboju@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=luiiUMRJ;       spf=pass
 (google.com: domain of naresh.kamboju@linaro.org designates
 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=naresh.kamboju@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Mon, 20 Jun 2022 at 18:36, Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> This is the start of the stable review cycle for the 5.15.49 release.
> There are 106 patches in this series, all will be posted as a response
> to this one.  If anyone has any issues with these being applied, please
> let me know.
>
> Responses should be made by Wed, 22 Jun 2022 12:47:02 +0000.
> Anything received after that time might be too late.
>
> The whole patch series can be found in one patch at:
>         https://www.kernel.org/pub/linux/kernel/v5.x/stable-review/patch-5.15.49-rc1.gz
> or in the git tree and branch at:
>         git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.15.y
> and the diffstat can be found below.
>
> thanks,
>
> greg k-h

Following commit causing regression while building allmodconfig for clang-13
on arm64, riscv and x86_64.

> Linus Torvalds <torvalds@linux-foundation.org>
>     netfs: gcc-12: temporarily disable '-Wattribute-warning' for now

fs/afs/inode.c:29:32: error: unknown warning group
'-Wattribute-warning', ignored [-Werror,-Wunknown-warning-option]
#pragma GCC diagnostic ignored "-Wattribute-warning"
                               ^
1 error generated.

Regressions:
  - arm64/build/clang-13-allmodconfig - Failed
  - riscv/build/clang-13-allmodconfig - Failed
  - x86_64/build/clang-13-allmodconfig - Failed

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

Build log details:
https://builds.tuxbuild.com/2AqLnz5M3EvhXrUvjkISFVrUvlo/


--
Linaro LKFT
https://lkft.linaro.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BG9fYsvY-0ub_CXbb5is0vRLQ9%2BSaPS8Op%3D9mZzCkeccUN%2Bmg%40mail.gmail.com.
