Return-Path: <clang-built-linux+bncBAABB4U4YH4AKGQE7JLBV4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id E438E2222FF
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 14:56:19 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id r25sf3730412qtj.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Jul 2020 05:56:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594904178; cv=pass;
        d=google.com; s=arc-20160816;
        b=gz71DQWxQaR/nuyMwLtMpIEm+LseO/m1sDJKRt9OYVurxjU5y3x6dhLK9xztB7ijyi
         rhb8eEmAg87dghCjUcANt9pUiQQgQaYCXQ2wfIbSxLUQz6Ya/ZDf/DzgY3kePK73LWAE
         ejodD7aCQQ7wT+NQ95O0oxleq0byHiwEGKnB+jGOexCrDoQMzTGn2f3woUI1XPTnt9cI
         Fon3RGlIKdQAOEBU0ALzBxI3Lxw4n4eXJEosvtlvEmvrsVdp9wNBo92mwlEOtcNLHMzY
         +oPAT1jSslR11chI3JPsI1cr5f8fSVSZUWrXu7N307CzKxbwjWKc8uFQFHVZ3Lt7S1XZ
         +2Vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:message-id:subject:references
         :in-reply-to:cc:to:from:mime-version:sender:dkim-signature;
        bh=y8eJfqJhdOPKgITiVBuOn2RAsjuGKAsbu8/O7S7y8zE=;
        b=Wy9+e5tnmB3vVn55hlpTekWclPlddWSFyFKEXvO7Mune1C/ckzWzrvQfarShTPY4Hi
         fnHuUfAkHAXah1UgU7f91US223fVG/+qR0xfoXB6OiEfT797dv0Zq3TyeSstRYmPQNGX
         M/UDyPfzE69I/6GGjEKAbce3gXrEeM/JwKEA4PIHThhHuhlEV9uxpvTU0zT9d1IA0Juw
         1lw4VN1csiBVqZxnE6kfmM7KkNgc2tg6IHgsx+5eeXyfRabL6IzDkY3K69d/Qqnattua
         rhWkTv5f2+xllJ9w8a3JQNMTb4M5+srJwCYoP4ewslVUEHYyqydDuVO6yZCI81l6GRr9
         CC2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:in-reply-to:references:subject
         :message-id:date:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y8eJfqJhdOPKgITiVBuOn2RAsjuGKAsbu8/O7S7y8zE=;
        b=bW3jCNcVILGOlQdnNHrlwT0AeRwNyGa89WgYC2uC1dwBwl3qtg4DUaJqii+oPTLgU7
         GJm7dB0GPtWAprkTCNiqkzfxxY3MrygAj8nqLWGu4OLS+gU4T9fIZt2PpR/fTLUylixk
         qO+lcxi+CF3HkCoz8Vqs+WDMj9HyPWexRvDVpPcjVRo6hBR6Vds64HPWDfkGi9qC6q7Z
         zGdrbX42MheDsYfTZrZR7gDe2b2gTOqSyCZLhb3TJmmnlRsjus0lnptp3sc0qPEl8seQ
         SiIF63Oa773+ZtKO58gzNcsWvhvIJ2/LNWw9OVjYKkrUOoQoHs6QtzNIwJcqb37hv8q9
         Yj0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:in-reply-to
         :references:subject:message-id:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=y8eJfqJhdOPKgITiVBuOn2RAsjuGKAsbu8/O7S7y8zE=;
        b=s+V70a8n8ZhfAIyzw/6yLMSjo1b9YOws2YN8iJrrZFC/80NT/qyMpUa2rXBV1DcClG
         N3dIJSGv765LzFBHAvMFjsMTvXU9xiTOkn8HbFDWlcjYegU8H04bhk8L1GyhVUJqeyIr
         MK8LGb8vJQn3uW9UFps9lDk5L3GLFm/j0Nw+FHxg0VqxVdoMFxsxvlSxttsrzaao3Xp3
         qM6He8y+UhGqSWOk8G0uT19a8n+dwmiHiTjy4nwYgAhC+HJOH2NzY1FfNBOLcxKnOWh8
         haAaA8Ke5GYf80phxj26PFL/UBma102NoZNqssGFOjJO+97rPVbCYzT/4Iym7IA3vUYK
         eFSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530XIupGtcGaPG1JmmqwySXNBI+gYcVQ+qRxYaifRAMy7VlgkWR/
	cUTH45uUyAETecGBsFrmF+w=
X-Google-Smtp-Source: ABdhPJzdhnW9JeZTHPWn2xi9hYcpVythuEyp/9Lk7vCY70gsl5Rs3vcV281EZFMICEjoBUDQHk1qbg==
X-Received: by 2002:a0c:fcca:: with SMTP id i10mr3957061qvq.150.1594904178456;
        Thu, 16 Jul 2020 05:56:18 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fbc2:: with SMTP id n2ls1320670qvp.5.gmail; Thu, 16 Jul
 2020 05:56:18 -0700 (PDT)
X-Received: by 2002:a05:6214:942:: with SMTP id dn2mr4098983qvb.161.1594904178204;
        Thu, 16 Jul 2020 05:56:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594904178; cv=none;
        d=google.com; s=arc-20160816;
        b=EY2R40TPFHHoyoqQ3aujQFO/7I8KNBRrFuQna3mSGl9dPKlhONFr0WQc+Ya3ZLn3o0
         An0cCaqguNnb8jj41TOd3bXPEvRpSrQhZbH/GslyMp8Y7vGXpero9u2bGB++RGai8rl6
         n9lmmRRiAWaLHtdzwS+wLyVyfIK5WCweVgvbY2paawEohx6MXQwHSHWzwS4d49s+Kzbm
         HCi6f7/BFWRDsxaqrY/1CI05Sf1FuDIviK0UMZgAVS7MA/BE1KUlvdONaZgtG5LzRmk2
         kmyLOJHwToL5Qavp51OJsBmBvVZYnS4Zr31eccZ0a+N2b55puLCgO84GLRmrLRvWSO1h
         cisQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:message-id:subject:references:in-reply-to:cc:to:from;
        bh=xG6uZCWfx//ewyMa1dDQjx6qijMXYSyXk8sGMcM9lpo=;
        b=WW6ir1LOVPjCt6BsDFu4B20hcxUtIMCV/y1yX5gBI5OqviNX46LX1pbCBuQJ27E+bF
         mBpSoBiweLk/Y4BYvHL3IooFYRw1iu77ingmvS3CxmGPYtnBg1OgmDTCBoBrQwsbVPWJ
         ROIVULl1oqbbSBw8FG8GK8fvFMYtrnSnuSQbBQJ+TXIaTvpc/qddPEkjGykOV4n3Wj0z
         E7gwIXMWEQB7uR+F+yP4BoNRU3ale3dtasJQs2i+Yw9JUIT+zhi4k2Si/nrL+ttweYnH
         0DUqtgXRajppDEes6XhqBCvPOlLdAe1nmkCb/eDtbvBioc7fjFb20ic61HQAGWw00KFs
         mFiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=michael@ozlabs.org
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id m1si259707qke.4.2020.07.16.05.56.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2020 05:56:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: by ozlabs.org (Postfix, from userid 1034)
	id 4B6vPv5kPyz9sVP; Thu, 16 Jul 2020 22:56:03 +1000 (AEST)
From: Michael Ellerman <patch-notifications@ellerman.id.au>
To: Michael Ellerman <mpe@ellerman.id.au>, Nathan Chancellor <natechancellor@gmail.com>
Cc: linux-kernel@vger.kernel.org, Geoff Levand <geoff@infradead.org>, Joel Stanley <joel@jms.id.au>, clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org, Paul Mackerras <paulus@samba.org>
In-Reply-To: <20200624035920.835571-1-natechancellor@gmail.com>
References: <20200624035920.835571-1-natechancellor@gmail.com>
Subject: Re: [PATCH] powerpc/boot: Use address-of operator on section symbols
Message-Id: <159490400429.3805857.14182608515747263467.b4-ty@ellerman.id.au>
Date: Thu, 16 Jul 2020 22:56:03 +1000 (AEST)
X-Original-Sender: patch-notifications@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of michael@ozlabs.org designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=michael@ozlabs.org
Content-Type: text/plain; charset="UTF-8"
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

On Tue, 23 Jun 2020 20:59:20 -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> arch/powerpc/boot/main.c:107:18: warning: array comparison always
> evaluates to a constant [-Wtautological-compare]
>         if (_initrd_end > _initrd_start) {
>                         ^
> arch/powerpc/boot/main.c:155:20: warning: array comparison always
> evaluates to a constant [-Wtautological-compare]
>         if (_esm_blob_end <= _esm_blob_start)
>                           ^
> 2 warnings generated.
> 
> [...]

Applied to powerpc/next.

[1/1] powerpc/boot: Use address-of operator on section symbols
      https://git.kernel.org/powerpc/c/df4232d96e724d09e54a623362f9f610727f059f

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/159490400429.3805857.14182608515747263467.b4-ty%40ellerman.id.au.
