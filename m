Return-Path: <clang-built-linux+bncBDB3VRMVXIPRBZ6KQSAAMGQEM2WNP4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC3B2F71FF
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 06:17:28 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id j5sf3633898wro.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:17:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610687848; cv=pass;
        d=google.com; s=arc-20160816;
        b=t8aU4KrYwUt+lOLAAZuTS4bE+iHoOUznnj033g08d9HDFc+DJ9S2bDujE5Hf0Np3zE
         DdPZqJC9oeL7O59hUN5HTe+r9YvMG+SlJeYNl6XUTjqskoto+nWr1W4M+vy7ZQZ9RL0w
         1VfZlmaoa0skb93x2RJiHjoaZ143xQmLcna0eTEqcNibbwajmv1LrdY2ui7pWmbSfOkw
         gWy1SuGaPNW96Z+hBNmPsglvSZaVxglN7ubqcmt9dQhXbaWoIWkam2aVSmkxLHrXyaBY
         wyFlJaUmngPb8MCI96EhORmcbCu3Iusibp7CcWLxFF9ac4ReydYY3Fjr/PPKKZOilu9n
         HiCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=gJOFYPsD+OB/RvNSDiHXQ2ejbKha8v3AxJWTjLNc3ek=;
        b=ugT2GRiwk7i/8FwXOE5M2K53wOtfEnEqyufYj3Up/0dDSeHLDaNzc0DFuVtj4FNaa5
         tzCVVj6XjZxc3mbrKGiKzN0tdMBSE2pdFDMbv1sczpJHGDVSMeM1OBHGkejJ4rH3NDny
         NlG7xSZax40r2NbER93J8HQeQk4tK15tkFZp0/FHMwFnP99l0xJ4kDFHIRJQ7NKzr1dC
         7897w0cXZxj2i8LH4hzSUuwA+xz4Y+45SofvhccJ/6qmUwWBWIuEJgJBkIwKSn/zoEBc
         3YwP2q/NvKNfxhqcRDFwRllsHtqXlaEU1ZJI8B7zUKow8pWJnOGP7YPMD9Th/ObB1XwH
         mYHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=gMRvbYFg;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=gJOFYPsD+OB/RvNSDiHXQ2ejbKha8v3AxJWTjLNc3ek=;
        b=TZDSsIMfYEk1glxMzCiW95qfaZwyJWVOh3OZYfzvW8Llh3yRnu66eQ8QEd/x0v4dLA
         oUQ4pDF/rmm2myjTIQAopaMT4UurW+rzjqg4yLu4EQvihP4rwuxGhLALTMhHN0oZlbmz
         NDOtFLWKmbNZqnhJi/V2i5YKNs9AXvKcZn+w0MFDVe+qUt1coNDXnH1sScG5EuOFhsyp
         VqIVm9vcRjaLWqHsYIx9cN1H3RBVRkpELnYCythXox4oTD8Zqjrg8vvFySE1/OAIGV2J
         FIRO7Ky4UerXaTBhIyD9aCeT0soQVM+WKODzW1uL2pMqrZEaqMFmXxlmiSifOJBf3rQk
         PtLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gJOFYPsD+OB/RvNSDiHXQ2ejbKha8v3AxJWTjLNc3ek=;
        b=NClmtsJFaQnc6OPq6EfonS+1e4DCEd4bzl6WDcdqdEEmtBtYIAMALHv1hMBj/A42+U
         /jV2YtPpWisM69uIDbG2K5fXIqvfi1MkkGg+Y6tDK2IQYylQlPDhqTKkrNfXgzHROtAE
         UGutJQwvpInuhFRTUypo5oRuSiNRKNw6D2cujcKCiC2Ya+Vfw0Cf6U0mv0ASc+huydWe
         lDk19Ys2jT4ygB0v0tsXzthypuAo5XaJvegk71/igmaFBLZtQkKM/kLanY8efL7zY+Cx
         B5tc0P085TP41xwTUUN8KUb60+wfGGx6QouH/2k6P4itHBN7EMLwG+2INWSwvG7ALHJu
         fFvA==
X-Gm-Message-State: AOAM533uMM3v+AY8hR3o0e7CRbl/JRHIuvNzpPNNay/VZlD17vfmR9LS
	HrP8rmXHR0nPPAuWfE75vk4=
X-Google-Smtp-Source: ABdhPJxI5SY/qV5EwM89fNCeKxxH2j315KjcrqoHJSAhUB8H7fmW7A3WpN8MOina4JZRD1BZPHBajg==
X-Received: by 2002:a5d:4a06:: with SMTP id m6mr11567150wrq.189.1610687847973;
        Thu, 14 Jan 2021 21:17:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:4482:: with SMTP id r124ls1764079wma.1.canary-gmail;
 Thu, 14 Jan 2021 21:17:27 -0800 (PST)
X-Received: by 2002:a1c:220b:: with SMTP id i11mr6994805wmi.8.1610687847136;
        Thu, 14 Jan 2021 21:17:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610687847; cv=none;
        d=google.com; s=arc-20160816;
        b=0lQGU9Ojvu4GgH7ihhS2YkO7TTwfCyH8zVRIe8Sds9KZTrNHBecP/K6y5M+X4V72NK
         x2rKwKG+H5vYScpWdf0LPdvH7wveFm4iLZnzIAbGknQEP1onaiDDSUNE7sN7Kcc7WsFn
         9fMz43TYYpEjV4TDzxhvjdyd+30xWQzq09Kk8drWRoY7t1/4x8pdt8F4Qi74Vzu5MhAP
         tMca4dZ5EWZ2ZD8TMxy1PxHIQmtFh7K4Xxe8iOXaQyCo5vUk672NVLZKPCVDabqinSS1
         xL7bEngLAqFCL8U/wlCXDpMeS3tZmH+I/ZtWKrWxpQJkKaX0ftqfGqZt8GiAUr+Oorm4
         iJxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=y+EEM5p4J6HAj0K86gGJsuaTuVxaPbz2acsMV1JwTEk=;
        b=kdAmQPtTIwaPxrlQZfhUeBIaZhvJ4XBxzwZIvbBv53tuGMWbd6NUg00a+Dz3YAcV+c
         HMnrI22SCVOgTZEdsrMx4xYjSLgXbGiZd2drzpK0oHi5wEUjm51DkHIXFu5RGT2U6/Wm
         Nsheb6mXu9pDw3B/ULrmHdZKt616gdulNzfY0bwOGQMNFc8GkQh1qilKaMBnZ3stDgDo
         8hxzDvIIuWeS3TcUsfRtjt/c4LI14dAxwKobcfxG0WmWBegWoM0gVAIALWeJg7wbtfZI
         uFB2A6VwOLFj8G8CzyO9LGzNp+32Xr0WsqdZH7phmXgny3t7r2hH9hI+WBbmCxwYEO9b
         vzCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=gMRvbYFg;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id b1si395504wrv.5.2021.01.14.21.17.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 21:17:27 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 9A849AE61;
	Fri, 15 Jan 2021 05:17:26 +0000 (UTC)
Subject: Re: [PATCH 14/21] x86/xen: Support objtool vmlinux.o validation in
 xen-head.S
To: Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org
Cc: linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>, Sedat Dilek
 <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <02a3b646aa20035c9c700c5b6d7897a9f898ba24.1610652862.git.jpoimboe@redhat.com>
From: =?UTF-8?Q?=27J=C3=BCrgen_Gro=C3=9F=27_via_Clang_Built_Linux?= <clang-built-linux@googlegroups.com>
Message-ID: <43d47af1-6735-6651-db11-4489c86c62a2@suse.com>
Date: Fri, 15 Jan 2021 06:17:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <02a3b646aa20035c9c700c5b6d7897a9f898ba24.1610652862.git.jpoimboe@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="2YhinrR0QVR3BdE4MEf3ELoBpe54uf0wZ"
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=gMRvbYFg;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
X-Original-From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Reply-To: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
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
--2YhinrR0QVR3BdE4MEf3ELoBpe54uf0wZ
Content-Type: multipart/mixed; boundary="vKOsGyGWEuckNKaORjGB8A10DjxiUpUmV";
 protected-headers="v1"
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
To: Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org
Cc: linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>, Sedat Dilek
 <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>
Message-ID: <43d47af1-6735-6651-db11-4489c86c62a2@suse.com>
Subject: Re: [PATCH 14/21] x86/xen: Support objtool vmlinux.o validation in
 xen-head.S
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <02a3b646aa20035c9c700c5b6d7897a9f898ba24.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <02a3b646aa20035c9c700c5b6d7897a9f898ba24.1610652862.git.jpoimboe@redhat.com>

--vKOsGyGWEuckNKaORjGB8A10DjxiUpUmV
Content-Type: multipart/mixed;
 boundary="------------BBA3C57DDCB4B42CF384FC97"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------BBA3C57DDCB4B42CF384FC97
Content-Type: text/plain; charset="UTF-8"; format=flowed

On 14.01.21 20:40, Josh Poimboeuf wrote:
> The Xen hypercall page is filled with zeros, causing objtool to fall
> through all the empty hypercall functions until it reaches a real
> function, resulting in a stack state mismatch.
> 
> The build-time contents of the hypercall page don't matter, since it
> gets mapped to the hypervisor.

This sentence is technically wrong: the contents don't matter, as the
page will be rewritten by the hypervisor.


Juergen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/43d47af1-6735-6651-db11-4489c86c62a2%40suse.com.

--------------BBA3C57DDCB4B42CF384FC97
Content-Type: application/pgp-keys;
 name="OpenPGP_0xB0DE9DD628BF132F.asc"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: attachment;
 filename="OpenPGP_0xB0DE9DD628BF132F.asc"

-----BEGIN PGP PUBLIC KEY BLOCK-----

xsBNBFOMcBYBCACgGjqjoGvbEouQZw/ToiBg9W98AlM2QHV+iNHsEs7kxWhKMjrioyspZKOBy=
cWx
w3ie3j9uvg9EOB3aN4xiTv4qbnGiTr3oJhkB1gsb6ToJQZ8uxGq2kaV2KL9650I1SJvedYm8O=
f8Z
d621lSmoKOwlNClALZNew72NjJLEzTalU1OdT7/i1TXkH09XSSI8mEQ/ouNcMvIJNwQpd369y=
9bf
IhWUiVXEK7MlRgUG6MvIj6Y3Am/BBLUVbDa4+gmzDC9ezlZkTZG2t14zWPvxXP3FAp2pkW0xq=
G7/
377qptDmrk42GlSKN4z76ELnLxussxc7I2hx18NUcbP8+uty4bMxABEBAAHNHEp1ZXJnZW4gR=
3Jv
c3MgPGpnQHBmdXBmLm5ldD7CwHkEEwECACMFAlOMcBYCGwMHCwkIBwMCAQYVCAIJCgsEFgIDA=
QIe
AQIXgAAKCRCw3p3WKL8TL0KdB/93FcIZ3GCNwFU0u3EjNbNjmXBKDY4FUGNQH2lvWAUy+dnyT=
hpw
dtF/jQ6j9RwE8VP0+NXcYpGJDWlNb9/JmYqLiX2Q3TyevpB0CA3dbBQp0OW0fgCetToGIQrg0=
MbD
1C/sEOv8Mr4NAfbauXjZlvTj30H2jO0u+6WGM6nHwbh2l5O8ZiHkH32iaSTfN7Eu5RnNVUJbv=
oPH
Z8SlM4KWm8rG+lIkGurqqu5gu8q8ZMKdsdGC4bBxdQKDKHEFExLJK/nRPFmAuGlId1E3fe10v=
5QL
+qHI3EIPtyfE7i9Hz6rVwi7lWKgh7pe0ZvatAudZ+JNIlBKptb64FaiIOAWDCx1SzR9KdWVyZ=
2Vu
IEdyb3NzIDxqZ3Jvc3NAc3VzZS5jb20+wsB5BBMBAgAjBQJTjHCvAhsDBwsJCAcDAgEGFQgCC=
QoL
BBYCAwECHgECF4AACgkQsN6d1ii/Ey/HmQf/RtI7kv5A2PS4RF7HoZhPVPogNVbC4YA6lW7Dr=
Wf0
teC0RR3MzXfy6pJ+7KLgkqMlrAbN/8Dvjoz78X+5vhH/rDLa9BuZQlhFmvcGtCF8eR0T1v0nC=
/nu
AFVGy+67q2DH8As3KPu0344TBDpAvr2uYM4tSqxK4DURx5INz4ZZ0WNFHcqsfvlGJALDeE0Lh=
ITT
d9jLzdDad1pQSToCnLl6SBJZjDOX9QQcyUigZFtCXFst4dlsvddrxyqT1f17+2cFSdu7+ynLm=
XBK
7abQ3rwJY8SbRO2iRulogc5vr/RLMMlscDAiDkaFQWLoqHHOdfO9rURssHNN8WkMnQfvUewRz=
80h
SnVlcmdlbiBHcm9zcyA8amdyb3NzQG5vdmVsbC5jb20+wsB5BBMBAgAjBQJTjHDXAhsDBwsJC=
AcD
AgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey8PUQf/ehmgCI9jB9hlgexLvgOtf7PJn=
FOX
gMLdBQgBlVPO3/D9R8LtF9DBAFPNhlrsfIG/SqICoRCqUcJ96Pn3P7UUinFG/I0ECGF4EvTE1=
jnD
kfJZr6jrbjgyoZHiw/4BNwSTL9rWASyLgqlA8u1mf+c2yUwcGhgkRAd1gOwungxcwzwqgljf0=
N51
N5JfVRHRtyfwq/ge+YEkDGcTU6Y0sPOuj4Dyfm8fJzdfHNQsWq3PnczLVELStJNdapwPOoE+l=
otu
fe3AM2vAEYJ9rTz3Cki4JFUsgLkHFqGZarrPGi1eyQcXeluldO3m91NK/1xMI3/+8jbO0tsn1=
tqS
EUGIJi7ox80eSnVlcmdlbiBHcm9zcyA8amdyb3NzQHN1c2UuZGU+wsB5BBMBAgAjBQJTjHDrA=
hsD
BwsJCAcDAgEGFQgCCQoLBBYCAwECHgECF4AACgkQsN6d1ii/Ey+LhQf9GL45eU5vOowA2u5N3=
g3O
ZUEBmDHVVbqMtzwlmNC4k9Kx39r5s2vcFl4tXqW7g9/ViXYuiDXb0RfUpZiIUW89siKrkzmQ5=
dM7
wRqzgJpJwK8Bn2MIxAKArekWpiCKvBOB/Cc+3EXE78XdlxLyOi/NrmSGRIov0karw2RzMNOu5=
D+j
LRZQd1Sv27AR+IP3I8U4aqnhLpwhK7MEy9oCILlgZ1QZe49kpcumcZKORmzBTNh30FVKK1Evm=
V2x
AKDoaEOgQB4iFQLhJCdP1I5aSgM5IVFdn7v5YgEYuJYx37IoN1EblHI//x/e2AaIHpzK5h88N=
Eaw
QsaNRpNSrcfbFmAg987ATQRTjHAWAQgAyzH6AOODMBjgfWE9VeCgsrwH3exNAU32gLq2xvjpW=
nHI
s98ndPUDpnoxWQugJ6MpMncr0xSwFmHEgnSEjK/PAjppgmyc57BwKII3sV4on+gDVFJR6Y8ZR=
wgn
BC5mVM6JjQ5xDk8WRXljExRfUX9pNhdE5eBOZJrDRoLUmmjDtKzWaDhIg/+1Hzz93X4fCQkNV=
bVF
LELU9bMaLPBG/x5q4iYZ2k2ex6d47YE1ZFdMm6YBYMOljGkZKwYde5ldM9mo45mmwe0icXKLk=
pEd
IXKTZeKDO+Hdv1aqFuAcccTg9RXDQjmwhC3yEmrmcfl0+rPghO0Iv3OOImwTEe4co3c1mwARA=
QAB
wsBfBBgBAgAJBQJTjHAWAhsMAAoJELDendYovxMvQ/gH/1ha96vm4P/L+bQpJwrZ/dneZcmEw=
Tbe
8YFsw2V/Buv6Z4Mysln3nQK5ZadD534CF7TDVft7fC4tU4PONxF5D+/tvgkPfDAfF77zy2AH1=
vJz
Q1fOU8lYFpZXTXIHb+559UqvIB8AdgR3SAJGHHt4RKA0F7f5ipYBBrC6cyXJyyoprT10EMvU8=
VGi
wXvTyJz3fjoYsdFzpWPlJEBRMedCot60g5dmbdrZ5DWClAr0yau47zpWj3enf1tLWaqcsuylW=
svi
uGjKGw7KHQd3bxALOknAp4dN3QwBYCKuZ7AddY9yjynVaD5X7nF9nO5BjR/i1DG86lem3iBDX=
zXs
ZDn8R38=3D
=3D2wuH
-----END PGP PUBLIC KEY BLOCK-----

--------------BBA3C57DDCB4B42CF384FC97--

--vKOsGyGWEuckNKaORjGB8A10DjxiUpUmV--

--2YhinrR0QVR3BdE4MEf3ELoBpe54uf0wZ
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAmABJWUFAwAAAAAACgkQsN6d1ii/Ey+u
Wwf+L7Wc4s2VSdkGP4TziiAQOPyXLMzZtIadL+AffpeLjPyuvSLrrlb2OW9B4GrVLpk8LXEbEKv/
NsewZGlR97vLwqnq8r8P5RUxOLYGZ2arjm+h1je5f0f+OnvHbVbWEqgx+qqjeoWfJwjj1bmve40g
+UPpgxpe6Yyyvg+MYrHBjBqDOFIkSDEX7eGdM7b3qKDJZtVbOSn3uWGcO+C1G/VxPnfdKznCoWN4
KfSaF58zU1YeiEzhL/5I9mdQRwFu9sELPl3zqfDzDkkJPd6ejqT5/1KlX7tVrmdz8CU6KyDbwgVo
rdGK4lP+tKKUoVUA6aM5qk0jNXkzAhZ5y/L3Y8VHtw==
=EbbS
-----END PGP SIGNATURE-----

--2YhinrR0QVR3BdE4MEf3ELoBpe54uf0wZ--
