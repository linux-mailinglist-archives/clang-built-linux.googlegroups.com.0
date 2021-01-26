Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKVFYGAAMGQESGHW5KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id D295D304563
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 18:34:35 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id g15sf7751298oti.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 09:34:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611682474; cv=pass;
        d=google.com; s=arc-20160816;
        b=UbOtWF9jyDJmT9fu9b+bIt7AP+Y/EmcblLm4LHSqVoLI9EvFLOEwoU5jv1H+pDqCmq
         yFDyoT4JHgaX5I4H5/gUw/bxpc9bUHCs/SPTJMUFGBiWjc/LrprPH6Hx+kMhXqTwoPB0
         Rg6cCXLVmMBCFOgVETV7aocvmpH2J4L4U22Yz/VVPna4ydfibQTotUTBB9JBfBm6VAZU
         Ps9q/rBk3+wBR0bCmyBi0Q8Oa+OjwQcCknPcv3lbgcOSmNwz8p3DwA4ke/Hp4IiCXywU
         9giXhGdDDwv19mYLhXhI7WzvxeuYBAFovl25dsG8mblxRg3UBydSqcuOb2Hi2g9ZCRQN
         vnAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=83qTO0+xClSA7PUgADveokaRLs3KeF4raQqcB61UjjI=;
        b=jveuUP5RGofK0KgOeZW/9Cbioe7HxL2uejVd+9yKj1pfYe1PerQOC42pqYb/LeDWbj
         4gOLeCgrFYZP/h4CYDRsR1HmsuAV5+7vrGqXsgsqOctTjU/vENemnYWluk8+8bhY/av6
         KpmYKMt1H3wrUfALQsPVEQq5el3Qex5g4HKHGvyuM607uksu/BBeHHb1fl7mVkthxt9o
         lfNhmzCo041wy+37AN3p2WjXNQX/vQlj2X6W0j0NZO1A2rvIsydzYVKg6khY6G9wWwP9
         NcPuGMHVNQDClQukDJ1fOOfG1AyAivdJUuB7awoSMCN5zB4PfwgVFZhP4N1iVoJ8bWy5
         d0Bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HwFSg+yQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=83qTO0+xClSA7PUgADveokaRLs3KeF4raQqcB61UjjI=;
        b=EZ0O/5l7YwEJyewrrohKcKqa6oSht37LPBjfmL+9gmqDDg8M8BGk9g5ngDFoXOs06N
         pIXjd8BnDqC6JQp9rB2YJ6AK0+0PtcrBwKCs3hMVaPIndzzmB1TL0dSod5Y0Wlsu3orD
         nbLteknKI7gZW8PuNA8z6+ElYYQwMz4L5WU58NoD2mDTSllCfcJqAYNGFzT3bib8YIR4
         lAcY4Wpde2a5PRQbyoVBNC7g38FUiUTiGYLXNd+2+ViowUIbJBFh9DNznmyMuQV8+FGB
         KnYc5Wn0ry888o5wkmNo8Zmbo0ZvFX3pg45gQzmsVy30ZYLdk2GyaUyB3WfVcPlG67i0
         9U6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=83qTO0+xClSA7PUgADveokaRLs3KeF4raQqcB61UjjI=;
        b=HWtfIa6aktcWRfEeNUjCRwR8PwFf8ZaDY8UhWUUVKCIl+KhH0mN6JMmLrVemQJw5rV
         SiwSKdvunTFRRZSWsrl5MQFt8KV1FKfn4sO731eQpwroiCvDqEU+7veIFcJurEx0DCh0
         Q6+ibuE/T2F9m8AYJH2sN/tZQI7s41li9dUymozo23aqTKdzEyTh6SIhbBBFY4wSJwSo
         xSGE4gKLiFqGPOhkTRzJ0nl4lA0+/z1kBJYx7z+RKQnxqerjdeBm4cD1SQnr8EyV8QiY
         wUMwM70o6tBACcm1wojMFUl5462CIqn3K08hwjjRYwmA+QAMCwXM1gsbnd362rO7fDKn
         QKRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=83qTO0+xClSA7PUgADveokaRLs3KeF4raQqcB61UjjI=;
        b=NIAiseI7FeFOC5+HrVE11hzvioWbtfWcmScpx//eYVG0al7Epkyo52qJUA4PaoPDLK
         phAvXZ1mY/eELxCNyk2wxnC49g08erEivOdYNzIecrQQx0neAFN6ccdu/PlUfXe/0+ZE
         BA2z76zMVtu6N9oOLAR16Q/H1KtVUJvkBpiTRrJuWB47kAZhffR+AFMeRegKlO1uolal
         XgvrivPevqmL0M5Slcehmis4P++9QkklyyLLLzOxH0fhz3VEQsUn8rgnHTX5Wkn3NUIK
         mSx3/tawsp/ZgR4+Q3FjeB6wh9VQbuRMK7b9Cg9T3r3la8/k91YVLk0tdmyPWBLzP2tS
         Kt3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533+z9gVG6yuf7YozGw6s15Bvm3WsE3sLcGSKCd6E8uIHnDCGTp7
	O611YJ7BB9lPTVimfRyhHnM=
X-Google-Smtp-Source: ABdhPJyINNVdBew3cH2ipPMunjqLqq5PP6cci4Vu5tb5qna75uYXPPxBEGZA8BiB9YgIdvXimmk1FQ==
X-Received: by 2002:a05:6830:13d3:: with SMTP id e19mr4777166otq.157.1611682474469;
        Tue, 26 Jan 2021 09:34:34 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1204:: with SMTP id 4ls4173324ois.6.gmail; Tue, 26 Jan
 2021 09:34:34 -0800 (PST)
X-Received: by 2002:aca:ab14:: with SMTP id u20mr479046oie.117.1611682474095;
        Tue, 26 Jan 2021 09:34:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611682474; cv=none;
        d=google.com; s=arc-20160816;
        b=TjJ0W4gvxaODBvpgQ15iIdVVH92PVOKe17dNlLNelbXbtVtZswb3skQ96avvZMRhul
         7+R6O644H10GPWl6wLJbqAYvpA6a4DmBZEfM3fjhyXjwlC6i95a0MA3xvz+y7ERM02qx
         J1ZqOe6Ljdg3hAcV396z37x/RwyOHQU1MkBtZg6AhS8iVaCyhFttQCDams8CjRnjEZ7z
         I4/EOM4U5C97xqZxpHorB8Pm7s+5zx50ag/yLck6z2jY46c514X63rmmoOiRKqDCNTGj
         HGOORGQt8eOgZW8KCqUEpltnFHBqq/tYvcdRptQ/Rwad/TcpCquPvOK5zWDdwTtoCgUx
         v/mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=QkdZMvIdycAuuHMYYIiCM8S4J0iFbvnCDnuvr4qUbpU=;
        b=YlvBmQyUywjbQNsZG8nYQmkWFSOUkldeDRBnV9uRydVU5JJEGhAcmxwoYK0Fayxlzh
         IGZBaNH1jr+veWGKxrBkVI8eIH2i93h15MF6/BxpRRov03wnk+uQfhJXrwjMpSdGIFfT
         mZa7a3PGOo7iRsqddOSxNfLL8xak4EMkXpAGwoo9kBs692dSxomXzAFbCofAw/8fppTt
         RJlUimJz5qyGWBrMpkt4HINtj1rcWWB5P6byDG2JLyg6E2sDT3ZewZcdgQKLoME7pZ8n
         I4M2NdBlvUE+E36HxyWmQ77uO6nKnvqLOATTo11XSC9xJWZ/mcpwM1v+7Bsy7mURn9Ye
         0p/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HwFSg+yQ;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x72c.google.com (mail-qk1-x72c.google.com. [2607:f8b0:4864:20::72c])
        by gmr-mx.google.com with ESMTPS id m7si1203723otq.5.2021.01.26.09.34.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 09:34:34 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::72c as permitted sender) client-ip=2607:f8b0:4864:20::72c;
Received: by mail-qk1-x72c.google.com with SMTP id r77so16518504qka.12
        for <clang-built-linux@googlegroups.com>; Tue, 26 Jan 2021 09:34:34 -0800 (PST)
X-Received: by 2002:a37:be04:: with SMTP id o4mr6771538qkf.336.1611682473560;
        Tue, 26 Jan 2021 09:34:33 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id k12sm3660143qkj.72.2021.01.26.09.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jan 2021 09:34:32 -0800 (PST)
Date: Tue, 26 Jan 2021 10:34:31 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
	Milos Malik <mmalik@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	Rachel Sibley <rasibley@redhat.com>,
	Erico Nunes <ernunes@redhat.com>,
	Memory Management <mm-qe@redhat.com>,
	Jan Stancek <jstancek@redhat.com>,
	David Arcari <darcari@redhat.com>, Xiong Zhou <xzhou@redhat.com>
Subject: Re: =?utf-8?B?8J+SpSBQQU5JQ0tFRDogVGVz?= =?utf-8?Q?t?= report for
 kernel 5.11.0-rc5 (mainline.kernel.org-clang)
Message-ID: <20210126173431.GA602636@ubuntu-m3-large-x86>
References: <cki.205997F8B4.SUXMQTXAEJ@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cki.205997F8B4.SUXMQTXAEJ@redhat.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=HwFSg+yQ;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::72c as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Tue, Jan 26, 2021 at 04:45:08PM -0000, CKI Project wrote:
>=20
> Hello,
>=20
> We ran automated tests on a recent commit from this kernel tree:
>=20
>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torva=
lds/linux.git
>             Commit: f8ad8187c3b5 - fs/pipe: allow sendfile() to pipe agai=
n
>=20
> The results of these automated tests are provided below.
>=20
>     Overall result: FAILED (see details below)
>              Merge: OK
>            Compile: OK
>  Selftests compile: FAILED
>              Tests: PANICKED
>=20
> All kernel binaries, config files, and logs are available for download he=
re:
>=20
>   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?p=
refix=3Ddatawarehouse-public/2021/01/25/622152
>=20
> One or more kernel tests failed:
>=20
>     aarch64:
>      =E2=9D=8C selinux-policy: serge-testsuite
>=20
>     x86_64:
>      =F0=9F=92=A5 LTP

This mentions that LTP panicked but looking through the dmesg logs under
tests/ and the log files in tests/LTP/, I cannot see a clear panic. Am I
missing something?

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210126173431.GA602636%40ubuntu-m3-large-x86.
