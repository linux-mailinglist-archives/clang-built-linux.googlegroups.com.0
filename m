Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBIMD3X6AKGQEDWFILHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id D25DB2998F0
	for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 22:37:37 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id y13sf6726177wmj.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 26 Oct 2020 14:37:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603748257; cv=pass;
        d=google.com; s=arc-20160816;
        b=OD0PA0Cs3u5MusI8WX026TB6xcEQoDXUqSkdTZpLqbaNvJGbUpejtvqDhxn6K2Qpwk
         umyLR3J50530nAu28X9RmEDrKbjVLufUDYc9sLY1k9OfrLlkIxmbfLtYVoFPUjaFwy/R
         pKxeAvN7sJi6Pi8YozSkkHDAfjiZ6ApaAJJWfRFNM3XbDkZ+4HVVBIjHvOMC/qHgXRZP
         gXydcL2Tdh77rP5F+O+GIaBwarmmOl28lelxWQmA6xPXyvyNOOMWthTYstJqkfZR2nj+
         yFvhwO/U7DA1suLudD97Ezo7tx8rV9BrAUvnNXuSUGTHAtqRM8lYsZbLEPiGqxUGgGrW
         /+mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=62iqxLhQF7a+C2OFBl3ehr1JmG+M5vQXKHPOQOQIVE4=;
        b=wv66vkTVtQZ6mGA64B7dF7/ZgJaFPm0V750FY9AuzYPn4jjvLU4REmAnGlMcSmILAo
         KOysE0KyLPBRzoJpspicVI+e7AWLvtrfcVH9yM3106xyHoA8nluNkeIBq1z1t41aLHiq
         QeNLeqxR4ksN+PPdEnLibdHgRagYO9cqYmYpYY8cXRZljotJJikGpquP2BS1X/x0DYcH
         lhDKTv0KtHqYkLKEmqoRa6rlsw8is/xO9r/llQ5prOER69BT4xJxcCHYZcRtYFvL0yan
         M6s+oCedJiKHDF4iyVxT7pBNuGyLNPYyfUJmAB+wisrjWLCNrLU+YikLof+SV5BwwxVh
         8JiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 82.165.159.6 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=62iqxLhQF7a+C2OFBl3ehr1JmG+M5vQXKHPOQOQIVE4=;
        b=i1fBbYwVIwnJGQ6hzpQ3QOw3i3utqmE2NQL1AjqzNeanJp5BmX08rRWHzjsxEl3/pP
         VkvCSDFm4cBPSzyMcmXiQMWlLbWoWcB5nD6lrRZAbrDS3GDcPi3A4xrIEGmFhSBiHBLw
         siLONyfGjHDU4INlTw/h7zKmEL/tOHceZeYVl7NBzT9a19R70W7L+YUE/sslLyHSth1S
         g0owtN3XJ1rAmlqMraUOTeOntUiQoHL3uCdSKCUCIsjGX71ResFmB5P+qRyG2Ky8mli+
         iBJmELI5ZinNzRK++gHgsGmmmKUCWMPKYwfneC/5xp90QbZ1g7fV9BW5oza/SbFGBGVf
         J1wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=62iqxLhQF7a+C2OFBl3ehr1JmG+M5vQXKHPOQOQIVE4=;
        b=fNKoiCz2vzR8j+H7AMNd55Z0xKEgGpO4vl6DqETnBM5KqJpa8/DETfxKS+ZfoNwCty
         KZ8A66iaTNy+POVA8BWQO6Bkdv9nW+AKTEHM9WvRh7XXkRo0JWlXr/dANf1hSSY+2RBk
         hsWByBFO620AQgSRkmH4Yj45WqZIw1OJbO6UWJwzbZaJ74sleXWTFosFox7or4LygNg5
         jJFYnFjdkBvIoQHyCEKSh/5+u9j/q2L8OIAb7INiUWr8aN1gUcT1EznDwPTbYvzadjlu
         zvc966M59ijvL5HJZI1LcsqLd8q4HTivBu1JCcccMwPRbhnuTTRhofy2XGjAdToMIzN/
         Wxzg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532kSpV1DKNaASBQGdTbPO2MuNQzchu+VQHOmwZTnvF6fkrLQPw/
	RYvH9ZbbaxdmsrL0ZcfDrQU=
X-Google-Smtp-Source: ABdhPJyp4jk1OKv2AatRZc1P+1IXODylLHlpBg6KYsVRYgCJIZTFbElPLfZXCwodWDzGPUtYqtI/pQ==
X-Received: by 2002:adf:fa05:: with SMTP id m5mr21444390wrr.57.1603748257595;
        Mon, 26 Oct 2020 14:37:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:208a:: with SMTP id g132ls145574wmg.1.gmail; Mon, 26 Oct
 2020 14:37:36 -0700 (PDT)
X-Received: by 2002:a7b:c451:: with SMTP id l17mr18525151wmi.127.1603748256774;
        Mon, 26 Oct 2020 14:37:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603748256; cv=none;
        d=google.com; s=arc-20160816;
        b=MbB8K+LYlt+cSGsfZnnlwmZMhBSiBAdFXCh2ZwgiogRzddLtROusHMzCZRbz7LgNZq
         D7xk5tsSpg2HTCstMhXlXjZ9UpgAnwH/O7L5dPgqK6iUfTzdmdePoLspTAThisQh78xh
         8qhQZWp5wPqMhwMnyUs6DzLzWWrBRwwN8fN83CKQyTS80kA3FHDaQ8keHYhWyzoZ85ns
         CktdHBGoYi+740E5/6Hz4ehn/J2eBgAFVqIFrUW5GP+iTJYHvTYrcI7hBBf0lXpZ5DD8
         56WNlekmNGiT3ZakGYyfb7gbsJ4L92Lh62rKPhFscZUj74HouHtdtO+1UKARcbsHCHMc
         dTeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=nMh5bl7pMvVKhySAvYigDNSx3WbjfeBoKfm+zVl6Vm4=;
        b=F6BXT/l5VG/ZUV1pIj6RkQeIEMVwjbeYGiCwiEeldKuuFb6afaTjZdliG6naz/PUA1
         7Wnvr60W1GZJUSyo8B4e75jvPgydonmEzoowtmZ3UkzuT+89m1f1zpWi8Je4VnoLWLPk
         CDh9fyJwyBFcPZ18w/UBwk3d1AlKCbyqt1FjHS0xsylV7rXHaskhw6cz96UhGvc57QYm
         bPD8jxeglwD7ciK1+bDArEvm2t1lKixXH/QYFREZSgx2ir2Z/o557NiR5Yd4b2HlVaKL
         XEX/EdR9+8wo1nX2ytJGHxT4x3U+34TDOaDEMD0c9HDZfb5fDx13/IyYYW6TevfIzvha
         cwHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 82.165.159.6 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout-xforward.kundenserver.de (mout-xforward.kundenserver.de. [82.165.159.6])
        by gmr-mx.google.com with ESMTPS id 16si361247wmi.3.2020.10.26.14.37.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2020 14:37:36 -0700 (PDT)
Received-SPF: neutral (google.com: 82.165.159.6 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=82.165.159.6;
Received: from mail-qt1-f172.google.com ([209.85.160.172]) by
 mrelayeu.kundenserver.de (mreue011 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1M277h-1kZ5zd0atd-002UW9 for <clang-built-linux@googlegroups.com>; Mon, 26
 Oct 2020 22:37:36 +0100
Received: by mail-qt1-f172.google.com with SMTP id h12so2840172qtc.9
        for <clang-built-linux@googlegroups.com>; Mon, 26 Oct 2020 14:37:35 -0700 (PDT)
X-Received: by 2002:ac8:7955:: with SMTP id r21mr8633099qtt.204.1603748255082;
 Mon, 26 Oct 2020 14:37:35 -0700 (PDT)
MIME-Version: 1.0
References: <20201026213040.3889546-1-arnd@kernel.org> <20201026213040.3889546-3-arnd@kernel.org>
In-Reply-To: <20201026213040.3889546-3-arnd@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 26 Oct 2020 22:37:18 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2v7pwqLcn7E4vSLomezZt3HaYccP4wPrGHUd_Bu16zxQ@mail.gmail.com>
Message-ID: <CAK8P3a2v7pwqLcn7E4vSLomezZt3HaYccP4wPrGHUd_Bu16zxQ@mail.gmail.com>
Subject: Re: [PATCH net-next 03/11] rsxx: remove extraneous 'const' qualifier
To: Joshua Morris <josh.h.morris@us.ibm.com>, Philip Kelleher <pjk1939@linux.ibm.com>
Cc: Jens Axboe <axboe@kernel.dk>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-block <linux-block@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:27k+digkAruOsnxHQ0ywMaEO2L1IBbjvbSJ6g5JPZRBAQFWKBpe
 wi32SaP8ThLIKy35IHOL/cAECAlEPyzAuUOEKQxTJdcbAKqYgYsleTW4E4I5kwbESihBvcq
 ahBz3yHwcstrBB0kG5eJwHp3xsxK7lKKzrjHPdLzOE0UElfOvLEUrWlCgRjkkPDVkxttODt
 xBSnrSeyUo95Bh91zBFTQ==
X-Spam-Flag: YES
X-UI-Out-Filterresults: junk:10;V03:K0:tvde+E0ZVAY=:u3Pwl3/brPTxB4Hvuty5wod3
 VzNh1FDoMMqBUBKcdUSGczvnHhWU1EDdTKVbsCCCb+wHoUYwBnrfTbx7MLLzLhIma25BhfV+u
 NpZpr307e8mGlyJoCFm1rRMtLnasxv+yCgSPOzmSWUWyI2QEJGFCzQnKiR9PEJFzOv0Hg71Oi
 c/VnHHZ2g3Blgfr+GiwamRWQ8ubcDL2403vgUhboswEZHmcy3I+GIFGFvgoyOG7UoDfwMbxU/
 Ho3xDOs6UdJ0J1BCjMFHAlHIdQk7Vox+SZYPrnIvDCAzUItKNYLjixsVfd62tveu/nrIBPlnd
 hgZkuxM6i+mLbpZH627BAemthexOC4MkvohH8l0GokdDxsOA2OW4jqZovsy1kNBKeiULntEXg
 C51Y+cK4IzcK7TDFly7fBZ0CqO57YgyrpJZcvRV9/06P6DmOcX/38YopTGv87XdBYANedQOa6
 qVhf0Sep7qg3wzG33IGLYbXdQOnjkRm205chtWFQ3076YqpfQ0aS6RhYP8/XZT8aXnrPdFzg=
 =
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 82.165.159.6 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Mon, Oct 26, 2020 at 10:31 PM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> The returned string from rsxx_card_state_to_str is 'const',
> but the other qualifier doesn't change anything here except
> causing a warning with 'clang -Wextra':
>
> drivers/block/rsxx/core.c:393:21: warning: 'const' type qualifier on return type has no effect [-Wignored-qualifiers]
> static const char * const rsxx_card_state_to_str(unsigned int state)
>
> Fixes: f37912039eb0 ("block: IBM RamSan 70/80 trivial changes.")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Obviously this didn't belong into the network driver series, sorry
for the mixup.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a2v7pwqLcn7E4vSLomezZt3HaYccP4wPrGHUd_Bu16zxQ%40mail.gmail.com.
