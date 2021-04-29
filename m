Return-Path: <clang-built-linux+bncBCWMTL744QBRBIPVVGCAMGQE53F35PQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 02F9136E7D4
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 11:21:38 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id a7-20020adfc4470000b029010d875c66edsf1266861wrg.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 02:21:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619688097; cv=pass;
        d=google.com; s=arc-20160816;
        b=AqcB6QfYfLPamDYSMfc8AyoB6/yTr5ytPJXrD4f3us1KOmsQeQJMyk/cInBNYyTDMn
         RKXAs6nJex4UGmPjzjMwRTQmxjxzD8YHctU3uh0/mCb6O2LxyrtbzTGUlrZ86XzFA1wy
         22Q3bSGzf/4Krp2cKL2Zx+dodtlA+QiHWsS23Eo+HmalEHrOEXFeaTDPe8HCdWF1lS9C
         03DsRO42epHTM97JfxVXiHQBoSRmuEIraRK+wqMVqMPghEd+Q8zJM6zvzXRXFzePT4ih
         OSCKQmO+ezUdUPb3BeCdhYXJFtbPC0fBjgHEvcOAO8wFJr1KoEkiKuVbdTpmM8C04mgX
         138Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=uoKGZ3Dtpki7CUKvOUQOyjg+pItVbGX/rp7Rov0mGGI=;
        b=sFv/W2qOYwxLr8p5Jj7qqqFvrf03JDuKrVQMc1V7uo+NrX5tjodgc41yEG9w91PRDC
         FmuBbuskbeumc7qi5oCNY0QH5Nv+kWZzHKa2zv4Y6vz7NSI1uONBBn5D9viZUpw0ePm2
         U0e6ZII4s0JX5ODKPLFIk8BwiAOtrRo6Bh801NNbbHhZE7FQBrwm6KI7nPmcCfRXTdx7
         fUjvl5c2QGZseWF8o5ulAAEnl4i2VZt4fx3Ncw3kHn5doIJz8/9Bw3sweDKWC15qUgKD
         U8DlQAKdWRrcUP23UdBqVN3/zH97dJZyOM6dcpYMHN0GuLcpaPO86LCiX2BgmLtr67LH
         IQ3g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mic@digikod.net designates 84.16.66.169 as permitted sender) smtp.mailfrom=mic@digikod.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uoKGZ3Dtpki7CUKvOUQOyjg+pItVbGX/rp7Rov0mGGI=;
        b=lSbmLvJO7BpMUxee/RsPyE8uWhevsv06IF6EWuovDY+GTuMXiOCoqF3txOTMvXwZYP
         Y3jlcbKuEFT5xp21tzpxPC4JR2QklrbAwLTp2dPO9c+xMpYIiMTMvuCwWZQcPlZtaEvj
         pcBTCSQ+I5b+Jr2NoXdjFDTxEx78/0QVdu9P2Emvl5vqC4Cc2GuRZO+b3LM5TeTSFe+1
         BcXB6JkHrUnwV7SHjzyCdLzaARlC0jqzlGvs0k44u+ADTlkWhYVxcH2T8rlUerrOTb9l
         +msSBcmdNDTR2x0rDm2DvvfzR/BqQAJH7j1YKZptp+OzPTgmAhmI/nTGymNO4WQHOfK1
         abKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uoKGZ3Dtpki7CUKvOUQOyjg+pItVbGX/rp7Rov0mGGI=;
        b=XFA/x0wwif0Fi/wWu0stPCgDMAkNp7wRFYY/gfU3Juhg0He7DxNDNRQC3WmBritwQf
         EfptVWiZVYSlVFiBj/Wz+QrmcHaD4RrAMa+va8xkg1u35DUWt/yXq+2muoT26+AwpC1T
         miz1FLQDZ1QfPfPavD+bQx+A9xNo4+YU1cMuflm58Xp2IoLMIxbTiwjOD3+5QRCwcVcJ
         kGxJjMoOS4sojokLK2wPH6EAgrzJdgs7fny39Nxa1A6Ihr0bMf9LTJTZ39n2oUAKsLjF
         DCA3GZRfCD9Eq5MWvQvazEuan977GyQA0tf24bS7X/d2VWonbBzMLBSQlBTXqd0f5zIu
         qmtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316oFYejshQS2vFgiJDy6Rh+yo6BOPH70WfqtqwJLZqbUKqANV3
	zXRTGK8KQkENBVKArhYClIE=
X-Google-Smtp-Source: ABdhPJxwO2L6Bc7LadlM+EBxv4RpKNolpzRVv+RkTaOkdAuehr0Bvci3qclITfAmb9s1UP+C5maHUg==
X-Received: by 2002:a7b:c93a:: with SMTP id h26mr6924162wml.107.1619688097706;
        Thu, 29 Apr 2021 02:21:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fb47:: with SMTP id c7ls1186288wrs.0.gmail; Thu, 29 Apr
 2021 02:21:36 -0700 (PDT)
X-Received: by 2002:adf:d227:: with SMTP id k7mr33985497wrh.390.1619688096795;
        Thu, 29 Apr 2021 02:21:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619688096; cv=none;
        d=google.com; s=arc-20160816;
        b=v2sQbjE1sVYKIEqfqG15ZOqQGFx+6UnFefbUIvH3IGtyOUEBWoec+RnVl8ksuklxuG
         GgyUbCppFI7HaoDTZ6LyJnb1dw/hzz7cftK5Im+hqO8rp9IRIwSRCgCqMXBr5HtaZkQI
         F4Y85M25Bgv8wKfKIiq7XEh8prEaHPk0v9GMXc6EomkXZ4rWDxKAVHN/wPHi6d/3Om6B
         IXWnAITVCI6SV0vjFTxQ/uTg1iHLQqcDT7H0Mr8qXB64cdHUK4iYnY5LHBQJa3qwvyee
         irFMHXeIVDCJEnd7bt+LDHga9PTKcvk938tvjTbgp2x/t2of8cD6ZaKukw1ST75JeEVt
         g/Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=hq8FNikRKDqlJfTQsBGjOAm4ZJcwz35AkRNsVzPBAe0=;
        b=iV0bXmWQY3JEjGgx4heLnrtagygKVjS0YNigNHuJYi/mpaN5p++nxFAK/KYAkMX5eL
         BYmwde+Ms+/Lm/W1LVvlxfpsCsOSqluRqbpAwMQwducvZclL/IhH7Out0N28awXVrXf8
         FpPg3UOUm+A7O1YHB3JaVHWUaoczmqNPirkngmVDA5z0587aj7OCdOM+aViaVmnGt4Rk
         nvfKahr70+1PIop6EV8daVHG0bHLiSHBTzrC3t46PkQOx+EYla13Gjy3xiGMm71q8PuZ
         pQXAZHh3ZYLXQX2KUKzY6EWq6XawPk2h9+ihPfTjyCF7ghyNQQWCuKkHUG52jLYFcuw9
         aaPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mic@digikod.net designates 84.16.66.169 as permitted sender) smtp.mailfrom=mic@digikod.net
Received: from smtp-42a9.mail.infomaniak.ch (smtp-42a9.mail.infomaniak.ch. [84.16.66.169])
        by gmr-mx.google.com with ESMTPS id p65si457328wmp.0.2021.04.29.02.21.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 02:21:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mic@digikod.net designates 84.16.66.169 as permitted sender) client-ip=84.16.66.169;
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [10.4.36.107])
	by smtp-2-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4FW9401zqZzMqwr5;
	Thu, 29 Apr 2021 11:21:36 +0200 (CEST)
Received: from ns3096276.ip-94-23-54.eu (unknown [23.97.221.149])
	by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4FW93z0c2bzlh8TL;
	Thu, 29 Apr 2021 11:21:34 +0200 (CEST)
Subject: Re: [PATCH v2] samples/landlock: fix path_list memory leak
To: trix@redhat.com, nathan@kernel.org, ndesaulniers@google.com
Cc: linux-security-module@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, James Morris <jmorris@namei.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20210428213852.2874324-1-trix@redhat.com>
From: =?UTF-8?Q?Micka=c3=abl_Sala=c3=bcn?= <mic@digikod.net>
Message-ID: <20b46fb2-94e2-989a-9102-5e5c7be3b8ba@digikod.net>
Date: Thu, 29 Apr 2021 11:22:06 +0200
User-Agent: 
MIME-Version: 1.0
In-Reply-To: <20210428213852.2874324-1-trix@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mic@digikod.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mic@digikod.net designates 84.16.66.169 as permitted
 sender) smtp.mailfrom=mic@digikod.net
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


On 28/04/2021 23:38, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
>=20
> Clang static analysis reports this error
>=20
> sandboxer.c:134:8: warning: Potential leak of memory
>   pointed to by 'path_list'
>         ret =3D 0;
>               ^
> path_list is allocated in parse_path() but never freed.
>=20
> Signed-off-by: Tom Rix <trix@redhat.com>

Reviewed-by: Micka=C3=ABl Sala=C3=BCn <mic@linux.microsoft.com>

Previous version:
https://lore.kernel.org/r/20210427183755.2790654-1-trix@redhat.com

> ---
> v2:
>   - Remove NULL ptr check
> ---
>  samples/landlock/sandboxer.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/samples/landlock/sandboxer.c b/samples/landlock/sandboxer.c
> index 7a15910d2171..8859fc193542 100644
> --- a/samples/landlock/sandboxer.c
> +++ b/samples/landlock/sandboxer.c
> @@ -134,6 +134,7 @@ static int populate_ruleset(
>  	ret =3D 0;
> =20
>  out_free_name:
> +	free(path_list);
>  	free(env_path_name);
>  	return ret;
>  }
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20b46fb2-94e2-989a-9102-5e5c7be3b8ba%40digikod.net.
