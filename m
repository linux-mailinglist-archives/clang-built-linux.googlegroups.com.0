Return-Path: <clang-built-linux+bncBDKIJPMU4QIRBYGGVT5QKGQEG32WLQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id C694A275653
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 12:28:48 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id l26sf1199557wmg.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 03:28:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600856928; cv=pass;
        d=google.com; s=arc-20160816;
        b=oAH67YLWLZZELF/m8jk8Xql2kIzZgPDi8vBDkNxBg2n13kqKHAUR0yIOQO9+vbO/8p
         x8Mc6CtfYwJ8518T+bJtJK3T02hQjDeFG6KkBLN3ngBxOZl/xPYVwpTFCRFScMGOr6cH
         viV0gB3n+7pZqnwXV0YaJnksWkA60wmGXK+oJyCCYwVi5tlQ0uPs8e7p4Jn4rNr9GaiK
         D3/qcYO7y3oRQ2kgv09tz/FnIODd4dk+0LWSBnRNJVF9HmMk3ayhxGSAEeGfLVgt1lxG
         0zIJbJ7THHA8Rl23ccYsv3r58wL3e9RiwEjCB/8rn/EpUy05wQBO7jOo9pk8I0BcPpud
         HRpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:autocrypt:from:references:to:subject:sender
         :dkim-signature;
        bh=izaGf9YbR5afZoZTVNEr/7yTlNXssM0Xa0lNSp5fe+A=;
        b=h+fTimIULgmPrUYY8aK1M6OzSJE3XzAMGaCiWT1RbYDac6gk5ih52GsaGwx3mdc0Pj
         ECbxtlkyx1E0qdZhIc0jP3TPXc9a3RKUPSz4S+ltHJagi5gRq/DctdRtICUTiujzat31
         hLGFGQLOvLp3PxduIqvXKF/A46Xth+wLcmb4d/Tiv5fDNfPTBCciKGeHsQjwBpTaPlSL
         b9V1+/m0ZntDOpgD9YSaWgUe102GUAGf18x53Xi/GXPtleog8BgM7zJjNz8PVjTjNNvn
         NRSwDMpW1VdSJf1xbL/avXwR2eC4uF+ozcFc3AZAv0sOzi8+KdIpdCpFZI8f18tQ9djA
         QXRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=LafYmGuu;
       spf=pass (google.com: domain of quwenruo.btrfs@gmx.com designates 212.227.15.19 as permitted sender) smtp.mailfrom=quwenruo.btrfs@gmx.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=izaGf9YbR5afZoZTVNEr/7yTlNXssM0Xa0lNSp5fe+A=;
        b=QCDlf+STQeKZRmRZsPU3v1N0sncn6qQiZ0tsMXwBdkQJ9pUzLD8fyE1cQNtLb6gC3W
         86+ma34oHaN0NsSWmWaufBuxNMyv8phXyc2/Tm924+T5HJpz82lAgGMu0EsnZUEOzmf7
         fgRo4mAgfb0mksUtIrF3Kljt9HEgDFXu5EC1iBHsDtRqHfBcOtpQZ4ySHnUghixyoESo
         tAMBc3pApSNIKPAFRsDJCDxvt9uJdcYofFGT+NW7pR6wZyJTqYzBJme5A0yTPiui6Td0
         cZEAQ3hD7b1+/2XrnnOcCZHwqEnjsTaxhyXR8JZoyAEJMKflW3DjX8lsqf4B6C7GbQM1
         Vk/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=izaGf9YbR5afZoZTVNEr/7yTlNXssM0Xa0lNSp5fe+A=;
        b=cXSUFUjGc7QZfqsDzgk3bxb6jcFfWnJCa5pYYzJyPJNYSBGy39/qh/8gfswSDLizeN
         A84DaRV09vn6EUZb2W2XR5vYTalEQWZ9YLHzQvlE0D4ZkA4s8jYLLgrGfDbGXmtVyNor
         8uH5XN3Q6L0RD4VaPmn467Bd8xkQ06QSA+6aew6Z9Eg8yJPB+2+6E36arWXYJc8QtGQ1
         gRGPu5ws1ezIh05wDRE6jLmQXfN/f2F9GtLs4mpGzUi3N2Za+CvDYY9hepbJDsvTLowY
         LzCyizDPsgthl5jhM3JXYQgp614pfU3f76jE7sSQK7tRyJAncKbEEFk0XDnoEhaoKIaw
         ofXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533S8PubBcWtrdhDNiWOD2qWy0lT4j+67Vhqa6U8QaZ20RaOGrOO
	J8mfiy5p3QNFI2YN5YgCeqQ=
X-Google-Smtp-Source: ABdhPJxtpEDv3TIFd53seR/RIK/ksP3WU46VmDUbrq0ehMnYTP9QWsgpqaSKL0yx7zfXW6yAMyDVTQ==
X-Received: by 2002:a7b:c7c9:: with SMTP id z9mr314209wmk.91.1600856928419;
        Wed, 23 Sep 2020 03:28:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:c2c1:: with SMTP id s184ls3088815wmf.2.canary-gmail;
 Wed, 23 Sep 2020 03:28:47 -0700 (PDT)
X-Received: by 2002:a1c:8187:: with SMTP id c129mr533733wmd.82.1600856927528;
        Wed, 23 Sep 2020 03:28:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600856927; cv=none;
        d=google.com; s=arc-20160816;
        b=RB6hAIxwLtYWTSvb9lTaO9OnhczBubuzlqumJaQ8Hor2R7nNyAZXVXoTa/W3/TXv4n
         +JZsEAhARG8g1kUMHc+JCHxPpe9awrCTwxnbp9n8/J/Zhrdb+hA+ANyd3CFrfyGFxX5I
         caGlL2pTgF74VlGU7wEsy16803Tz/w23FaHAJ1lo3KYcDPF0Xzq4ihWlsQWbGiwWFN5K
         Je+hcjmawwlxR1IkbyBDEslKjuUWQ+ucRiLtDOxXiROitg/2yl51nr4ORM6b7dY0TIRo
         FV/MzZgOTI91n2VqmGBSAU0QdLKqPNbapKogCkxYY/YI29P0TQbzbw0XrgepYhSIzrtG
         mRqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:to:subject:dkim-signature;
        bh=xL2U3NozeTul0+lmTQjdivJQZm7lG5Gbj7vz3MA8BMU=;
        b=HKyRPZyji4Y/zf5XZLt97efAPW+SzyhXVhR/kLmRdwDJ8NJuAKmX9gHXFyX/zgvHlo
         i9p8Jysh9QbAip4fttbB6pex9FhIF/22PrWSJMAGWKz5IPgGxqiVOMNYeohWDrko2L/X
         f4nmgWiXvitac/rr0USweF5Ma2fwtUlXwo5sGnDKmnWCNhTfu57BVxXMOgBUuEzxOyNG
         RbIENfgFvPbJJaaStFFlw1M9rQK0IuJtMrxmdEBkjHJjhXI6YsY/mBTTiLo748xdRgR+
         08y8hoYfEGpcuyAiC7cyZRAu+MkszU8w0/wSn5XvbkS9grOnwwF2B4H38Bu4MQ3qQzAU
         oCmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmx.net header.s=badeba3b8450 header.b=LafYmGuu;
       spf=pass (google.com: domain of quwenruo.btrfs@gmx.com designates 212.227.15.19 as permitted sender) smtp.mailfrom=quwenruo.btrfs@gmx.com
Received: from mout.gmx.net (mout.gmx.net. [212.227.15.19])
        by gmr-mx.google.com with ESMTPS id k14si419559wrx.1.2020.09.23.03.28.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2020 03:28:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of quwenruo.btrfs@gmx.com designates 212.227.15.19 as permitted sender) client-ip=212.227.15.19;
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [0.0.0.0] ([149.28.201.231]) by mail.gmx.com (mrgmx004
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MnaoZ-1kmMUV1jGP-00jb7O; Wed, 23
 Sep 2020 12:28:47 +0200
Subject: Re: [PATCH] btrfs: fix false alert caused by legacy btrfs root item
To: dsterba@suse.cz, kernel test robot <lkp@intel.com>,
 Qu Wenruo <wqu@suse.com>, linux-btrfs@vger.kernel.org,
 kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Martin Steigerwald <martin@lichtvoll.de>
References: <20200922023701.32654-1-wqu@suse.com>
 <202009231428.5CFBSt9U%lkp@intel.com> <20200923093133.GJ6756@twin.jikos.cz>
From: Qu Wenruo <quwenruo.btrfs@gmx.com>
Autocrypt: addr=quwenruo.btrfs@gmx.com; prefer-encrypt=mutual; keydata=
 mQENBFnVga8BCACyhFP3ExcTIuB73jDIBA/vSoYcTyysFQzPvez64TUSCv1SgXEByR7fju3o
 8RfaWuHCnkkea5luuTZMqfgTXrun2dqNVYDNOV6RIVrc4YuG20yhC1epnV55fJCThqij0MRL
 1NxPKXIlEdHvN0Kov3CtWA+R1iNN0RCeVun7rmOrrjBK573aWC5sgP7YsBOLK79H3tmUtz6b
 9Imuj0ZyEsa76Xg9PX9Hn2myKj1hfWGS+5og9Va4hrwQC8ipjXik6NKR5GDV+hOZkktU81G5
 gkQtGB9jOAYRs86QG/b7PtIlbd3+pppT0gaS+wvwMs8cuNG+Pu6KO1oC4jgdseFLu7NpABEB
 AAG0IlF1IFdlbnJ1byA8cXV3ZW5ydW8uYnRyZnNAZ214LmNvbT6JAU4EEwEIADgCGwMFCwkI
 BwIGFQgJCgsCBBYCAwECHgECF4AWIQQt33LlpaVbqJ2qQuHCPZHzoSX+qAUCXZw1oQAKCRDC
 PZHzoSX+qCY6CACd+mWu3okGwRKXju6bou+7VkqCaHTdyXwWFTsr+/0ly5nUdDtT3yEVggPJ
 3VP70wjlrxUjNjFb6iIvGYxiPOrop1NGwGYvQktgRhaIhALG6rPoSSAhGNjwGVRw0km0PlIN
 D29BTj/lYEk+jVM1YL0QLgAE1AI3krihg/lp/fQT53wLhR8YZIF8ETXbClQG1vJ0cllPuEEv
 efKxRyiTSjB+PsozSvYWhXsPeJ+KKjFen7ebE5reQTPFzSHctCdPnoR/4jSPlnTlnEvLeqcD
 ZTuKfQe1gWrPeevQzgCtgBF/WjIOeJs41klnYzC3DymuQlmFubss0jShLOW8eSOOWhLRuQEN
 BFnVga8BCACqU+th4Esy/c8BnvliFAjAfpzhI1wH76FD1MJPmAhA3DnX5JDORcgaCbPEwhLj
 1xlwTgpeT+QfDmGJ5B5BlrrQFZVE1fChEjiJvyiSAO4yQPkrPVYTI7Xj34FnscPj/IrRUUka
 68MlHxPtFnAHr25VIuOS41lmYKYNwPNLRz9Ik6DmeTG3WJO2BQRNvXA0pXrJH1fNGSsRb+pK
 EKHKtL1803x71zQxCwLh+zLP1iXHVM5j8gX9zqupigQR/Cel2XPS44zWcDW8r7B0q1eW4Jrv
 0x19p4P923voqn+joIAostyNTUjCeSrUdKth9jcdlam9X2DziA/DHDFfS5eq4fEvABEBAAGJ
 ATwEGAEIACYCGwwWIQQt33LlpaVbqJ2qQuHCPZHzoSX+qAUCXZw1rgUJCWpOfwAKCRDCPZHz
 oSX+qFcEB/95cs8cM1OQdE/GgOfCGxwgckMeWyzOR7bkAWW0lDVp2hpgJuxBW/gyfmtBnUai
 fnggx3EE3ev8HTysZU9q0h+TJwwJKGv6sUc8qcTGFDtavnnl+r6xDUY7A6GvXEsSoCEEynby
 72byGeSovfq/4AWGNPBG1L61Exl+gbqfvbECP3ziXnob009+z9I4qXodHSYINfAkZkA523JG
 ap12LndJeLk3gfWNZfXEWyGnuciRGbqESkhIRav8ootsCIops/SqXm0/k+Kcl4gGUO/iD/T5
 oagaDh0QtOd8RWSMwLxwn8uIhpH84Q4X1LadJ5NCgGa6xPP5qqRuiC+9gZqbq4Nj
Message-ID: <ab9e6eb3-6aff-1ea3-62e0-4489fe73e066@gmx.com>
Date: Wed, 23 Sep 2020 18:28:41 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20200923093133.GJ6756@twin.jikos.cz>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="vgnfynEVXBIxDjL5gKofa873v00si57IU"
X-Provags-ID: V03:K1:GV3DMxNi9U/kpTABAHQdlmrO8Hj8UgXyTCnoJ3tvx8Yc0Fxrbx6
 iwlcLSQ0gCTfwRvIWecbN9jbNGK5xmEq0ftL3x6Ga2IQcJKNbIVZwKlyccinTRIdeCDzFGk
 +e1BYn0hMZ9ATkP+VS55wrKIk0+I+KN2aoVxBdotRu238rrKvIruYF+QPDQrrzKBX7FRlSp
 X9QAhblFAbhj2mBoErPbA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nEdP/bw3oew=:PKLTQs5ww/FcOoYj74shNq
 t/T6r/1VpSZQnJFYiNg0l7TdD2GBj6j/KBRWrYnSYRj2++/UN1pZ3VYL3KfdiihCK5qmzU692
 5fm+IMDXznYlrts7zWdbQmKSHVvNvY5OqQjIqnkVDbO1GAaSP1DK7NRMk0m/9zB+3lYoGX8VM
 OOzXQMhUa9Np3ZvS5pagKfqbgzrtDz0q0VOOyuzdQjmOHg3kMb7XAmRuHSxG/QoH7yPlMZwDo
 6UBikkXlmuqNicxdnG0AFtNtZ+P4viege9w0i1+YUUMQnXijHP0glJN/SeFqMOJLhE+coF72N
 2Y63zIBRqXK0jjTU0udSCM47DN0UuFADIMhXFJbbbGDtzmF/1oBMXyZpJNM8JBlbMbVTn7Bcz
 jWKIKZy97h4tG9GqSr61kYTyniEkqgj2057mkqHBeDuGUFq2F9VEc5YH6zcZULYH9Bk8mGVYc
 2mLQ/QPH6tox+ReZzGP00Qzp0sJeByezlx78NNUE1y/MKJneWIe8Zge2xdO5ipXs0MgnykU4F
 cLwSXSq3C76eA/vCsyHtyOp8Lrkwxgz9c8ny654oxe45bPHAn2Ne3fQmF36hhvVf1Yd0Z+Vny
 WmoVfoLJ5HcliauduNUzvdU09S0X3621WbQVyULVb8ig9or5Onq42Ooml0B4jyvn+TRrehFMD
 2OtUYdTH4ns2pHg/40Vk9POwkYTPfig/tEnT1X4NLKzuFDsr7dx1bDsVK3m/MptSq2AWGJhXd
 XX9zP5b5384uOzO6d7Yo8XzCr+D8vtBztrAn55htJwZJZSjvaIKtnHNR4wglU3XIs8UkZHFC/
 uR7b8iNcL/rXzMFcUrb1S5UNMV2jJQ270wJ16R/ZihKMq3nLWc07hBT/fZfoGCJS9ImcGglQI
 Zc+o2Fn6jrILcjpkVsfG/FqK38M6ppIPA8y61UX8oqr0Q9M174Oispy6P/QKPrWdBIxUqe5Of
 ew6EDKG/YxdBV9A8oBDrxlKc60Jc1C10VIiu/bxZWOTpPMoCTZLXScefsVUUwsI7Fhwe6ni0j
 9e8fgEOrUFqXv6No2Ai24ekUl7H6u8gAV5+a3Ds+UXN+8xu1wxaONGLRbujZ/m+zIkCkHkH+Q
 bnF6pLtoVm0vmv/HVVAQYRXIUWPxASAKXosSnwvVfz7wjWahdDUitOIHnLnMpe7GOzfrR6BBW
 UECRLLTcqmJLX4fR+q7jfLHhS5ES0uBJTqaUkiUh1u437ua+LgYR92YjHT5w58JH9e0f5pplh
 1FavFxYQ0fDUMWDXDc5ImxDD+8ZxmjelWZp1nng==
X-Original-Sender: quwenruo.btrfs@gmx.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmx.net header.s=badeba3b8450 header.b=LafYmGuu;       spf=pass
 (google.com: domain of quwenruo.btrfs@gmx.com designates 212.227.15.19 as
 permitted sender) smtp.mailfrom=quwenruo.btrfs@gmx.com
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

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--vgnfynEVXBIxDjL5gKofa873v00si57IU
Content-Type: multipart/mixed; boundary="R1toVwMLlj2OJeGPfzwiLqmw0EA1Uzc5q"

--R1toVwMLlj2OJeGPfzwiLqmw0EA1Uzc5q
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 2020/9/23 =E4=B8=8B=E5=8D=885:31, David Sterba wrote:
> On Wed, Sep 23, 2020 at 02:23:18PM +0800, kernel test robot wrote:
>> Hi Qu,
>>
>> Thank you for the patch! Yet something to improve:
>>
>> [auto build test ERROR on kdave/for-next]
>> [also build test ERROR on v5.9-rc6 next-20200922]
>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>> And when submitting patch, we suggest to use '--base' as documented in
>> https://git-scm.com/docs/git-format-patch]
>>
>> url:    https://github.com/0day-ci/linux/commits/Qu-Wenruo/btrfs-fix-fal=
se-alert-caused-by-legacy-btrfs-root-item/20200922-103827
>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux.git =
for-next
>> config: x86_64-randconfig-a014-20200920 (attached as .config)
>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 6a6=
b06f5262bb96523eceef4a42fe8e60ae2a630)
>> reproduce (this is a W=3D1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sb=
in/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install x86_64 cross compiling tool for clang build
>>         # apt-get install binutils-x86-64-linux-gnu
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross A=
RCH=3Dx86_64=20
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All errors (new ones prefixed by >>):
>>
>>    In file included from <built-in>:1:
>>>> ./usr/include/linux/btrfs_tree.h:651:19: error: unknown type name 'siz=
e_t'
>>    static __inline__ size_t btrfs_legacy_root_item_size(void)
>>                      ^
>=20
> u32 should be fine here, we use it for all the other item helpers.
>=20
Sure, but I'm a little interested in why it passes in gcc v10.20...

Thanks,
Qu

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/ab9e6eb3-6aff-1ea3-62e0-4489fe73e066%40gmx.com.

--R1toVwMLlj2OJeGPfzwiLqmw0EA1Uzc5q--

--vgnfynEVXBIxDjL5gKofa873v00si57IU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEELd9y5aWlW6idqkLhwj2R86El/qgFAl9rI1kACgkQwj2R86El
/qgIFAf+P3SmtUwZZiMoYd2ysWauUrTdN8nepLc9bVb1UDnIepQN8QuzuHg0giF6
7nZw8ihlKH3uo2AV0YGgNOW3eNJaU0F2iXT6vWoOd5E5KruuqjEe/7L3m64ygXU3
Khy5eNc3+AGq0jbzDbJaG1PAoUuAqNN4ozXHLHJT6CzEv82b+LVYZVP+rBUsyoiR
sSx/PszSogTc9w70e82h+VlDQY2dPOOg5wPlwaoDB6Bqh+ljcqij2evQzTrgvGdd
KC83ro6SLRNEFTZPUOvMge6ltU+tG7L9e0wWZifZ1jLvsvR2dAcYtAmrSqceoJ0z
GluZ7zMdwDn5zbdOxhRp7kcYkhyu0w==
=rCIk
-----END PGP SIGNATURE-----

--vgnfynEVXBIxDjL5gKofa873v00si57IU--
