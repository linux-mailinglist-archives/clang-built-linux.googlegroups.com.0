Return-Path: <clang-built-linux+bncBDB3VRMVXIPRB4VMVCBAMGQE6IDKQQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB1633736F
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 14:09:06 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id z6sf9486456wrh.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Mar 2021 05:09:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615468146; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q+QnGlAefrVaa5YXs/wbHNjwvf7vcJwJ6o3j+ZPN25NIFk8KHcwPztaAst416Ifa6x
         YT6Ylhn9SfilD3am6wU9ljpmigOM99MM1zJv5H6P+HRuLjR8B+MCZr4oLA6UgBKlvjOl
         iYiRv/MeRvthDV5AxW1KEmY7I+bbMXBtgbH2+zgHcp4/9bDwryeNuCr0/MCcQJnKy2xL
         kVKzYItcYrPubDPx5aS7H0oH6Tk3XnxlAcmS2f3OHJ3rmgP/VvH8SV5Jm05HCH+7qvom
         hkER80KW765nXM3C2fjuR7grur4fG2WZE/ZZM8RhGHES+V66TBNxB/b+97Tkto39wGEa
         gQ4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=4MA3lIzPiqin0BeOM3q0J7C10xRme9JAHRNnQY77ru4=;
        b=RwMerHPNCC4jguUF6aRQLOSS8wpIggjhV38Fb+FNKP6p4gt/Hg7kqA6kDqe/rF9xJe
         AZqFGq/tG73w/7+0aPJb1Sk8Hj0Or0rXwW1u5N6D0835OW0/hsq6KZbd/J14R5d+o0iV
         Ht6dp6rEhwSU8/MMbRYyeUUROR6PLRjNm5epNgOSdeFHncR2fi6R9zTTj/iUHEIgi0rl
         Tm+rmvNwpM8qVqwR/OO/wq0dkaMZpyXEwUFjxmvPK+Dubqh2kAdy9RgG7rqo14/OCHhI
         NokcpuNvfe9sSJYLYLlb685EkbO3oKzkWt1EpGi3fM4l61PDyfLekylZXuitVih2jI9t
         pUPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=kSANEUwt;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4MA3lIzPiqin0BeOM3q0J7C10xRme9JAHRNnQY77ru4=;
        b=m4Lmjc+HLaM1BA4EO31BOWKjDvALkttN453wR+p6sAYjNt4ym+sXK2z7GHrkTxVJWK
         nohjey1Yidb1viCms7bt0Pd/w0tTUJd6ThvdlVjO11ixZd0WHknawYyqoQReHl6sK/Qn
         anxx4qvg0FH43nRHThdmyq6M/7C+cMZkOuLlaMS8m6ADCbe7mGTDGO9TcUyZYQFkr4sR
         ZCvDXJwwGeEuO7O2VCN4nqziUqY3Zin0mDhnAO48MqKQ3JRlte5w82XGOxwJ+I9dRo6T
         cFj/+nE1ld3YISjSbetIbdidqC0h0rqFzQwp4tRlJB7PiWsVH2ZD1RQkOBwVmlvQwknx
         i1Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4MA3lIzPiqin0BeOM3q0J7C10xRme9JAHRNnQY77ru4=;
        b=dn4l6LOr98xLidZzUJ/UxTaTdtLmZJLNezAB+TbW/vC1/sk2ls3CiKLobyNpEh19I5
         J4aIBiucIHu+hMwlPih/WUiR9vQ5S3h5E2LzVpv3nH3UDKh+tbhbJExR6meINbotsJ7i
         NcudfelAKLkB0KeTGax8kRnKViw8aqMYz8xPUGjBVWotl11+jg2le9yHKRVmjo4bB+S9
         Dl2HkHFfMBK3vVWz+f4zLKOEW9t91HkmRKXvr1ddj2yTK9OIlfWdAr5gYxDbWZXmrA7q
         Ckr6dDeQuJA+/Amk51b/p3nHfc5tlRziwOl+1j/I7Lc8cfiKKZwEFusx+J9ZxrDEDMUF
         baoQ==
X-Gm-Message-State: AOAM532GRMeF87QGD8zTuZd8aoioJsB8knAngKneIFCV5XOW9eNrw1FA
	gaXgE+D0I/venrY6tv5EGrY=
X-Google-Smtp-Source: ABdhPJy7ICgLi7nUPxpeUYsm4ZXa+mvLwmfBsUiAcyy1fpQ7mDArJml3qfYKM1KOAZYKK2MQ9UN8GA==
X-Received: by 2002:a1c:448a:: with SMTP id r132mr8195715wma.157.1615468146216;
        Thu, 11 Mar 2021 05:09:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc94:: with SMTP id p20ls2849278wma.0.gmail; Thu, 11 Mar
 2021 05:09:05 -0800 (PST)
X-Received: by 2002:a7b:c303:: with SMTP id k3mr8373292wmj.100.1615468145357;
        Thu, 11 Mar 2021 05:09:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615468145; cv=none;
        d=google.com; s=arc-20160816;
        b=FUtQ8aGmnunv6ZWk1BjD0pazcw1AYqqONJco6tpkzWhw/kTnOeeEDLrpaq8gdR4eN8
         mjmho2V01NstTtqxRH/34dhTXWcm2hjkTxNvL54/WT4PyA1V/m49JtOeGmrK0c4QHO2l
         U4elSLzAMSLplwsUnokhM5U+tRqvX2mJ0XKXuI+UDath2PpdapAo/w+5PebrymsqKbWn
         T89gd8W9kn40hB45z5LxNEoVprWjMkDLqr3G81dM3QRHqTg+z+s+r0exLNdOUhnVJdSF
         //9kEa5oQenjd1LxNSpXnYpPZ+B8UuaeZGILg9r24Ia9x6mWNpVOwLsJK24Bqn3DPbkB
         /4CQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=/cnNGJS92LaF9k2ZTwqu9nk70vjyYRogPXIIe3N+itQ=;
        b=TFJ60I5cBm9MYKOyB6+IBspRI3UStmOdVOW2SZAIrVpHjxIay11SC9rtYE7JU6QIYw
         zSRGiG72CWEWUWvNieSGq8KtqBszbOXmuRTIm5kFkRgn2xKrBAFxGT1QG5QQn47TQjJU
         xZ3nFsr6eJFIzDmCGjO3IJJjai5pf9we3N3Zg7Qh7W5kgJSZ/iCUa1tyC/MjEN3X+5no
         r+0bMnn2g8mzHkyfxv8eWORulGjwAInR4hHR18nfIal5FIlJoPKglIoVtfRH3YHl8axN
         wQfu4uXfLwH0TuoW37CEzsiBDVHoRB2euaaskyKTO5D+hTWWJgoWTO7iArtN/3dgd653
         rZAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=kSANEUwt;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id h16si106307wrx.2.2021.03.11.05.09.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Mar 2021 05:09:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id B29A9AC17;
	Thu, 11 Mar 2021 13:09:04 +0000 (UTC)
Subject: Re: [PATCH v6 00/12] x86: major paravirt cleanup
To: Borislav Petkov <bp@alien8.de>
Cc: xen-devel@lists.xenproject.org, linux-kernel@vger.kernel.org,
 x86@kernel.org, virtualization@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-hyperv@vger.kernel.org,
 kvm@vger.kernel.org, clang-built-linux@googlegroups.com,
 Peter Zijlstra <peterz@infradead.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Jason Baron <jbaron@akamai.com>, Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ardb@kernel.org>, Deep Shah <sdeep@vmware.com>,
 "VMware, Inc." <pv-drivers@vmware.com>, Russell King
 <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Sean Christopherson
 <seanjc@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>,
 Joerg Roedel <joro@8bytes.org>, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>, Stefano Stabellini <sstabellini@kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
References: <20210309134813.23912-1-jgross@suse.com>
 <20210311125026.GB5829@zn.tnic> <20210311125143.GC5829@zn.tnic>
From: =?UTF-8?Q?=27J=C3=BCrgen_Gro=C3=9F=27_via_Clang_Built_Linux?= <clang-built-linux@googlegroups.com>
Message-ID: <121a494d-b365-eb41-c329-2f0676b72c20@suse.com>
Date: Thu, 11 Mar 2021 14:09:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
MIME-Version: 1.0
In-Reply-To: <20210311125143.GC5829@zn.tnic>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="sHGm1foLXOCKkEUnUGNC7UsESSEa9kG2D"
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=kSANEUwt;       spf=pass
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
--sHGm1foLXOCKkEUnUGNC7UsESSEa9kG2D
Content-Type: multipart/mixed; boundary="ncnlhSdjJDB3MyBZ79puGdjOzrKooCvcO";
 protected-headers="v1"
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
To: Borislav Petkov <bp@alien8.de>
Cc: xen-devel@lists.xenproject.org, linux-kernel@vger.kernel.org,
 x86@kernel.org, virtualization@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, linux-hyperv@vger.kernel.org,
 kvm@vger.kernel.org, clang-built-linux@googlegroups.com,
 Peter Zijlstra <peterz@infradead.org>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Jason Baron <jbaron@akamai.com>, Steven Rostedt <rostedt@goodmis.org>,
 Ard Biesheuvel <ardb@kernel.org>, Deep Shah <sdeep@vmware.com>,
 "VMware, Inc." <pv-drivers@vmware.com>, Russell King
 <linux@armlinux.org.uk>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Sean Christopherson
 <seanjc@google.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 Wanpeng Li <wanpengli@tencent.com>, Jim Mattson <jmattson@google.com>,
 Joerg Roedel <joro@8bytes.org>, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>, Stefano Stabellini <sstabellini@kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Message-ID: <121a494d-b365-eb41-c329-2f0676b72c20@suse.com>
Subject: Re: [PATCH v6 00/12] x86: major paravirt cleanup
References: <20210309134813.23912-1-jgross@suse.com>
 <20210311125026.GB5829@zn.tnic> <20210311125143.GC5829@zn.tnic>
In-Reply-To: <20210311125143.GC5829@zn.tnic>

--ncnlhSdjJDB3MyBZ79puGdjOzrKooCvcO
Content-Type: multipart/mixed;
 boundary="------------C6C892EEF89D5D4CB4A414F1"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------C6C892EEF89D5D4CB4A414F1
Content-Type: text/plain; charset="UTF-8"; format=flowed

On 11.03.21 13:51, Borislav Petkov wrote:
> On Thu, Mar 11, 2021 at 01:50:26PM +0100, Borislav Petkov wrote:
>> and move the cleanups patches 13 and 14 to the beginning of the set?
> 
> Yeah, 14 needs ALTERNATIVE_TERNARY so I guess after patch 5, that is.

I'm putting 13 at the begin of the series and 14 after 5.


Juergen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/121a494d-b365-eb41-c329-2f0676b72c20%40suse.com.

--------------C6C892EEF89D5D4CB4A414F1
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

--------------C6C892EEF89D5D4CB4A414F1--

--ncnlhSdjJDB3MyBZ79puGdjOzrKooCvcO--

--sHGm1foLXOCKkEUnUGNC7UsESSEa9kG2D
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAmBKFm4FAwAAAAAACgkQsN6d1ii/Ey+h
KQgAjhK+g8WC8LZv2hOzJE0RlIalM761Yaxv12fceCorl30Mq4b1ZB57xdM97FUQkO6DjnJs7XYg
2c97qfyRRv9pPDd+Su+Fh7p2Uu47BFyHBxT250G0OwoK6/j/FZzu4EPYtliizyz2yMJ8+qtHugU2
8vXAmywUjTjUvKSIfPAOmn5tjViNfhf27RnVZAY/LF8zkg05naANhSW3K2fKfT5se7UBaPxK1f+2
YKKfs031D231+gYklLq9lLoBhfIu6RYF4wiVdcNw7oFNjMv8ggFAUVRDmtTEOa8GkQsqHDpvqdoJ
0i0OjOZrTslf0aJUbx0dLx60C4JKa2cQAkGwGgKU1Q==
=koDR
-----END PGP SIGNATURE-----

--sHGm1foLXOCKkEUnUGNC7UsESSEa9kG2D--
