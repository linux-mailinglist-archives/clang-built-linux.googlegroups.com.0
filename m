Return-Path: <clang-built-linux+bncBDB3VRMVXIPRB7ONQSAAMGQEWQ2HSFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8282F7204
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 Jan 2021 06:24:14 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id b11sf2727359lfj.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 21:24:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610688253; cv=pass;
        d=google.com; s=arc-20160816;
        b=HQ0yAyz/f+N57CeItDDMU7XfVIL7nxhR87Z2eyK+Wqmkyq2OSQ9RdNZTIC1TqvKE0a
         sWA7ki25kpfnU/6H+DGxl+iLzU1ltt5G0JSMlDz7MwCMKFGIbeoBvklyGlDmIiYKVhsu
         C9DvAnT2O7ViwxF1IW+WrPfmNcJtNTt16kmhZysm34C1tI+OlH1YEppQ8nUG0q/JCAZj
         2Fje0b18u7Lvv7ZT8B41Coru1632QpdZIpyg+tDgaNpoGqQNq7O5gi6TK6u3kTVSGcsG
         vQlJxHgg9XIDrHUfiE6Bz/HZJrci2ZnvVFTnpyUXMPVC3VY90bFYx8FfDKFWGQejYxah
         51bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:subject:from:references:cc:to
         :dkim-signature;
        bh=bBBpp57Zvb7dkCDOiIm/uFKz2zc+MZyZHTt+Xfzaezc=;
        b=vV1Xc9aH8zB53goL/Lx9/VcB+Bj0iulSG9Gayo1hv7o1o9Qa2l4VMuuB0REnbG//Jh
         x4aaHcvtafJMU3iFXqLKXfsQFylaiKBQqAH+ZXqCeWrEFljscJXuBBYe++rK1iSnH3Zq
         c/ZWbDfvoDMSnFz447TH0wWsxvTNIyX8nKisCffzOsSbiGWzJX7z9Y41tOiZKUT6lSUx
         +b6HdUuSkMD+yS8MYwaIZ/ZagnenLIb78+vY7Aif7ZjectNKzg6GHUv6xGprs1PccDjP
         jI8eQnEeE2POdHC9lcAV15QkYuAodgy6BiPJiJyL3q81B5VXwRCcKQYKq3WnGoRLalbI
         P5EA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=QydJfn0z;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=to:cc:references:from:subject:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bBBpp57Zvb7dkCDOiIm/uFKz2zc+MZyZHTt+Xfzaezc=;
        b=INWjOAm3yfuyB7eFELbKyIvss6fvM70FzgUUNt6upgcopnJrJvMDSFIHM5SgLX/S7F
         3WmsgDikq7sPFeI/jLRTVUAMRshkczLqtYdR0YhFqYCeT8mKPCGfHxYqcec4yk533pZn
         uOznwx2pLDZLIUwNkxlyuWHzOSyNyFquKlYmNFGNN6cpX/Hi0pPULdM4GKJto4CdTOJc
         jw1yccS4fzeQrBPynJNey1Q9un0MhSEFcnvXixoO6oHjjtP23qUdjd8RdOUp7mn+g1Tt
         sEOLgVE9PPikhUuLmrbohRVnIABtd+rFwxHjETnITXb4BouaBngi+9jgqH2SriE3yI97
         miLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:to:cc:references:from:subject:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bBBpp57Zvb7dkCDOiIm/uFKz2zc+MZyZHTt+Xfzaezc=;
        b=HUxczbgcdUYSzZLueaIyQXoR4Y7JKsaDDH4+JF22bJvuP92bD3hXbWRIX06LuK1oUv
         oRam0S9Nht3MmgnsYGdrvToSVGON3CTZrgF9KEQRVrXwKvkKTz7T0IZLWlEOxn5VgV/G
         1zI2O6Nm/K+fWcKeMC+o2AfvDSRZZk0MCH3s2l94JYk/ww+AzqCUKswq3lAjOa+hIx5/
         xrL/pUrZJ2j5W8/TyrBZtZgePlEfLgSyb3C4h5B9cfEEnaGPtj2CfrGFacVks7hH5aLg
         3ZGYugsG0n8dUq/FCSW5p8Kg9793rF/48qjPFlYQCxR1Hu6g+8O+qGaAYanOqCcvhM2N
         BoyQ==
X-Gm-Message-State: AOAM53242BruJ+mJefLDrcGke0wSzMDrY6IjXyBNaI8P19JpXhmNT0ib
	vDW9yCDgEmCvst7Xj5/Vv7Y=
X-Google-Smtp-Source: ABdhPJygNSCiwZoBMvWw+n0oR8MWj3g6vztj5Mnt3WiYrYzLKLwSXJyAEg5slIMV+oBpbk8TRif1MA==
X-Received: by 2002:a19:2390:: with SMTP id j138mr4670052lfj.294.1610688253679;
        Thu, 14 Jan 2021 21:24:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls1620941lfu.3.gmail; Thu,
 14 Jan 2021 21:24:12 -0800 (PST)
X-Received: by 2002:a05:6512:504:: with SMTP id o4mr5227581lfb.398.1610688252679;
        Thu, 14 Jan 2021 21:24:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610688252; cv=none;
        d=google.com; s=arc-20160816;
        b=SCSBML3y0a+f52yCvq2zkCFfg8dKaPsfmW86rYd2MwZIuvcC+R2P++FH8wxOZKf8WZ
         OX/CS0hLKJ2OfZsw6EKGoLfc7yWZBJB6H9T46tXqAIB5dbKYaMWT9I67M1hzWArJWBdt
         Gd02RsL3yMEZUdEUBYKksh6InHHBpuDVaojWZ8A99Rww7dQ55HdIChLrI0qPkU8cWY7h
         8yvBqRl71TaeY47Y88rAFhzsP5bWaSGjVvXC1PJALGIwSWd6tAjtHb3HZ4aEV+xWfZQc
         G/hpfK0prLrI/2c+8Y6bQi7+uzOgED0neoeGavVIzoV4v+jzBMF+9o4Bafts2Hiuld6t
         il8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:subject:from
         :references:cc:to:dkim-signature;
        bh=J2xnywbZmgxwNYeVJp6k6b1c5mAHJeCdKgFgbMlcff8=;
        b=NNUJuejrcBFlKKvV6jj8IFEpzh2lj7tViR4nQCboSXvFgDnePTDDtiGnU7Hndb86Gi
         ozk61XsOCcv5L7Tdk9YjoAATQL82clfLx1iz8JN48XyYKnHqbJbt45JjtxQ0LqtJvr1A
         hIymxw/xigjg8yZwXFXaQRjsiOeO5aE98TOodzXNuJ9/qstOvt6vDffA0UWUGS0UwNhB
         d/bUqEYxfEbg4lpY/mlyIy8P4E3PQIw0bQrSiefjczBRag1hsSIvjJZjxGn4ugE92Yvt
         Q6w0l7Ta5d+s8Cfgh08vwqGxVm0LJgW05SoBfIieyty13wapFrnrMDWmJn4u7J5hR8Kr
         ZeKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=QydJfn0z;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id l8si272285ljc.2.2021.01.14.21.24.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jan 2021 21:24:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id D4484AB7A;
	Fri, 15 Jan 2021 05:24:11 +0000 (UTC)
To: Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org
Cc: linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>, Sedat Dilek
 <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <adfa2afe5ddc831017222db9f48ad0fbff17c807.1610652862.git.jpoimboe@redhat.com>
From: =?UTF-8?Q?=27J=C3=BCrgen_Gro=C3=9F=27_via_Clang_Built_Linux?= <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 15/21] x86/xen/pvh: Convert indirect jump to retpoline
Message-ID: <12afb52c-f555-656e-d544-c2965a616bdc@suse.com>
Date: Fri, 15 Jan 2021 06:24:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <adfa2afe5ddc831017222db9f48ad0fbff17c807.1610652862.git.jpoimboe@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="tcEbDVrouNxRCQT6V6Z5mmVZzjxADZESG"
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=QydJfn0z;       spf=pass
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
--tcEbDVrouNxRCQT6V6Z5mmVZzjxADZESG
Content-Type: multipart/mixed; boundary="BghqoVWYJFtxav4Rjq1fhrg7lEQgeEz5i";
 protected-headers="v1"
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
To: Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org
Cc: linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>, Sedat Dilek
 <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>
Message-ID: <12afb52c-f555-656e-d544-c2965a616bdc@suse.com>
Subject: Re: [PATCH 15/21] x86/xen/pvh: Convert indirect jump to retpoline
References: <cover.1610652862.git.jpoimboe@redhat.com>
 <adfa2afe5ddc831017222db9f48ad0fbff17c807.1610652862.git.jpoimboe@redhat.com>
In-Reply-To: <adfa2afe5ddc831017222db9f48ad0fbff17c807.1610652862.git.jpoimboe@redhat.com>

--BghqoVWYJFtxav4Rjq1fhrg7lEQgeEz5i
Content-Type: multipart/mixed;
 boundary="------------50C7AC22B88B580CBA5BADB1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------50C7AC22B88B580CBA5BADB1
Content-Type: text/plain; charset="UTF-8"; format=flowed

On 14.01.21 20:40, Josh Poimboeuf wrote:
> It's kernel policy to not have (unannotated) indirect jumps because of
> Spectre v2.  This one's probably harmless, but better safe than sorry.
> Convert it to a retpoline.
> 
> Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
> Cc: Juergen Gross <jgross@suse.com>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>
> ---
>   arch/x86/platform/pvh/head.S | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/x86/platform/pvh/head.S b/arch/x86/platform/pvh/head.S
> index 43b4d864817e..d87cebd08d32 100644
> --- a/arch/x86/platform/pvh/head.S
> +++ b/arch/x86/platform/pvh/head.S
> @@ -16,6 +16,7 @@
>   #include <asm/boot.h>
>   #include <asm/processor-flags.h>
>   #include <asm/msr.h>
> +#include <asm/nospec-branch.h>
>   #include <xen/interface/elfnote.h>
>   
>   	__HEAD
> @@ -105,7 +106,7 @@ SYM_CODE_START_LOCAL(pvh_start_xen)
>   	/* startup_64 expects boot_params in %rsi. */
>   	mov $_pa(pvh_bootparams), %rsi
>   	mov $_pa(startup_64), %rax
> -	jmp *%rax
> +	JMP_NOSPEC rax

I'd rather have it annotated only.

Using ALTERNATIVE in very early boot code is just adding needless
clutter, as the retpoline variant won't ever be active.


Juergen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/12afb52c-f555-656e-d544-c2965a616bdc%40suse.com.

--------------50C7AC22B88B580CBA5BADB1
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

--------------50C7AC22B88B580CBA5BADB1--

--BghqoVWYJFtxav4Rjq1fhrg7lEQgeEz5i--

--tcEbDVrouNxRCQT6V6Z5mmVZzjxADZESG
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAmABJvoFAwAAAAAACgkQsN6d1ii/Ey98
dwf9FKFxh6mblBLmXpWbnobv8fq1R9wat7m3z2UhO6kyOlwBeFJzVvmE6IbT6pwaaT5n3ZfCnQuA
EOnNel9tEAzJoc0hfaFkugTaS+ptIzX1qKfIJvmM1B4JSqcWMpNdf46eqBdIQpwGfopHN0QqCqR0
tK6k/nHWkSBuhIGzwvb1NjbcIiqxggT8NwS/kNhkpRS1hXAA/zVHbg3o4kyJMeKcT8l7/+sEni5/
5NxrVrw2kdJVKK2ll1n1NiWzMJgZUocgeY5hRMKn2x51hgYNOBBrsu8nZY7NYxGjrJ7A6WqX/zAF
YPd/+5rkMJ9LD3AfPdwQJpFoo61c/1nieAsOfXAvew==
=wtac
-----END PGP SIGNATURE-----

--tcEbDVrouNxRCQT6V6Z5mmVZzjxADZESG--
