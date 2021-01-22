Return-Path: <clang-built-linux+bncBDB3VRMVXIPRB4N7VGAAMGQEYNYAI5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id C99732FFC04
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 06:17:37 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id u15sf1820272ljo.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Jan 2021 21:17:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611292657; cv=pass;
        d=google.com; s=arc-20160816;
        b=uTXmD3qucT9bw4N8EUT9orUjSIGtuEStoh5FLaEyec1Se73aSqygVVv2Ex5249yYm7
         6+f1AJfbF+UxxQYA6KGpQxOhoYYiv+vx3ygPLxonVCykfl7HUYIIxq3mhgCVpWlJj9QY
         4m55rsTUpQJoCEEQMpKeQ1t8VylkWlBz7XjZY4ZvtsPBwEioGwqkER3I2lGZX/Br3AN/
         jjaltRo2rfMtiOFnvx5IMFNCCwDAHEyJBIBVyxFnt7kda34lv0vC5jTDDsg/xnE1Ce92
         Axqt+JGxC1aN2Fqzt9DxK8eaZmMGcxsNg3/ZceZokXgohITI4xw2/KYEGkQsngmjK7em
         dUfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=bMIt5C/CzQZd1evoOXicuOgp+Mo48d9egodBirsha4w=;
        b=AlParTh376KaeUkEwmQzEaQTN9giMUF+x8BYp5ghnnoRwL+xSbZynykC3nRFveAZAU
         SAkeyFDwpVd3KtnWgob652yDGYzHLPpAQnzBDjcCIvOepr1zHsxmMfeY9VU7psybk/7t
         2TY/u0rR60BamjK+BLr5iogdTQ2Z2CP/GX3j5pS9ijvbi6IgU51vwfLzIyEfAP2kUbDS
         35laKAr2dHaP3ISKzbcmDbx/7l8bYzOcOFKYRtsYGfVM7OG3KcD1HdK2em1xHnGmtKwy
         fQGktWw+YQinqtTXAjJHzP/p+aa55k/kxBTrx7u2uMOrdq2fyfEwS16mfs95QKGFYnWr
         peQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=HDSfW4Ym;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bMIt5C/CzQZd1evoOXicuOgp+Mo48d9egodBirsha4w=;
        b=ABa9SqXnq2aFO1TsRJq7scQCKMT4JaTlJwPE7F/z54syNxtCfrroyQ9zUfzfJMkfXu
         1XSkCiIkNdU8kaqrNxonvuYP54TC8ZCvWL9D1+MUCJOttTJWPfZzj70bHwP1nGfsa0Pq
         U1S/HkS300XrJgbshO5PxubfllC5nHYN4bHLQxsYLEXh/gchqIFJhEUDmQcdqpef6iIr
         PwA6AbCB1gSojsZcFug4hdYh150mHSig0lbxJCmfYwnqih21joZW6vmspV2Sd+uy5tgQ
         akSxwi5yB+PA2kYc/zkY2o8nkbqBs7pna7SqvabAttRSZfZLjJnl6l2CorD6tdtn5Er2
         FQyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bMIt5C/CzQZd1evoOXicuOgp+Mo48d9egodBirsha4w=;
        b=j3LV1QVmeFs/kf606nOE4ArXyjcb4DmnH/joOB6yUqZM06sNE4I1tKOr3kQ1JxTJEX
         tBqJahfNaHSOIX69nv3QI9ORV5/bZPri3bcn4Hh5C6TjZjRDj2wmEHV8Ds6AtiKQOJ6X
         07HQuFC8IZZ+V1HjnNYki8U/jHgNS+P5KAWD4p13P4gLwidcnvBvw1Ms3hr2G+8SDw7q
         EEJyz8RQEwwKrgJxDWlw++/Ois9FO5pIwNUvoIYhO+mnTw/W5EHRirPmV6OEdrCvWIU2
         l5HX0Gbpn6NTYHJL5zBkK9o4z0xUi8J+dv0abaNiwlMtKBq7VzoufC4jmC3BcBoy3Yul
         /MLw==
X-Gm-Message-State: AOAM531bKa4pUwgjqjmPWzkqEDO2PcA6liFymJpZ1t5MhGllzxuj/ibN
	t9yWvdjjd7pR+1a23BhwXoU=
X-Google-Smtp-Source: ABdhPJwtk50tBiYyrRoF/lr2dCwR17TJs7cUWay4sHLmseeD+g+ofT7Jw61lUJEkwlTZi5ShYJsnJg==
X-Received: by 2002:ac2:592a:: with SMTP id v10mr69726lfi.123.1611292657306;
        Thu, 21 Jan 2021 21:17:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls1425920lfu.3.gmail; Thu,
 21 Jan 2021 21:17:36 -0800 (PST)
X-Received: by 2002:a19:6a11:: with SMTP id u17mr1421521lfu.184.1611292656288;
        Thu, 21 Jan 2021 21:17:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611292656; cv=none;
        d=google.com; s=arc-20160816;
        b=f1XH/6Y0KjUWDsQ7MzB08Rw07DEQygTuzggYTRgoKQnfet3Bn4Cyls4bPBfPvs6fJ3
         Uwp267d5VRQnxRRv7wCzlh5oP/zDPV8uQESQ/4rfUdt8n5B4kMdiM3oQ5vXepL+uHxwO
         7jdY7YlsGfvOZj7DYvKsaPHQdZEA7NhFbUsT0f79XElFBJPqWBEvnULVAfaU1xmhacEp
         kA+n9wkQ7gzlw68zncGkfnUKxWlXnqqXcipOcfb57LTVwTzy+CMJ17WZIcjsfAKUe6fA
         K3ezMrx9/ZEEvIXIOzWcdPoTABjKbmgZ8YIwqqmI19WCncZeGV2foAtKvHJ4oR0Jv+xn
         6YkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=CFVFz0Be8DQwV4mfA/1aiAljTuzVMfYdBxJw9uFvVmE=;
        b=b0qY7cOSoyKQzteDrm8lT2vtpB7ZcHZ1xLJvhH5DW5E8E3uZFBDFEHTEvvUjEssUrM
         VqVEsnZ6zH7nVthLSIEfko4HOGm+0LJwhT/G1a3n12TLeJbwtPt1ET0hIJHUGnq4vTt9
         nxfRoehL4K4RHHIRc7ObqBTJhcHdIOyZT1STb0YXsyppUm4Cj8G3nQog6KFny2AW+dst
         e/8G6OfI8bEDiY1znflft3K/tW77UpUEVB3cxjN35P+fkalxl//h8H7Gx//JJHS4GRsQ
         hsz4WGKsYpCrI5su/Z5q1ibzdPjiNcxzK45qIO7jHZH0TMSqs2hy9otFvrBwkAWKbK17
         oIlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=HDSfW4Ym;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id f18si344228ljj.1.2021.01.21.21.17.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 21:17:36 -0800 (PST)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 2083CAB92;
	Fri, 22 Jan 2021 05:17:35 +0000 (UTC)
Subject: Re: [PATCH v2 14/20] x86/xen/pvh: Annotate indirect branch as safe
To: Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org
Cc: linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>, Sedat Dilek
 <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>
References: <cover.1611263461.git.jpoimboe@redhat.com>
 <4797c72a258b26e06741c58ccd4a75c42db39c1d.1611263462.git.jpoimboe@redhat.com>
From: =?UTF-8?Q?=27J=C3=BCrgen_Gro=C3=9F=27_via_Clang_Built_Linux?= <clang-built-linux@googlegroups.com>
Message-ID: <8830033c-f81a-4986-a4da-7fbe698c2995@suse.com>
Date: Fri, 22 Jan 2021 06:17:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <4797c72a258b26e06741c58ccd4a75c42db39c1d.1611263462.git.jpoimboe@redhat.com>
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="RRRFwUxB40jQ67PQE5AL74fJEjI8sPxs2"
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=HDSfW4Ym;       spf=pass
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
--RRRFwUxB40jQ67PQE5AL74fJEjI8sPxs2
Content-Type: multipart/mixed; boundary="nu3NcC5GSR6EJqL9rOcAw0oHuU6Kbrzha";
 protected-headers="v1"
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
To: Josh Poimboeuf <jpoimboe@redhat.com>, x86@kernel.org
Cc: linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>, Sedat Dilek
 <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com, Miroslav Benes <mbenes@suse.cz>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>
Message-ID: <8830033c-f81a-4986-a4da-7fbe698c2995@suse.com>
Subject: Re: [PATCH v2 14/20] x86/xen/pvh: Annotate indirect branch as safe
References: <cover.1611263461.git.jpoimboe@redhat.com>
 <4797c72a258b26e06741c58ccd4a75c42db39c1d.1611263462.git.jpoimboe@redhat.com>
In-Reply-To: <4797c72a258b26e06741c58ccd4a75c42db39c1d.1611263462.git.jpoimboe@redhat.com>

--nu3NcC5GSR6EJqL9rOcAw0oHuU6Kbrzha
Content-Type: multipart/mixed;
 boundary="------------CFC1D0210450B1AAF7AEA076"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------CFC1D0210450B1AAF7AEA076
Content-Type: text/plain; charset="UTF-8"; format=flowed

On 21.01.21 22:29, Josh Poimboeuf wrote:
> This indirect jump is harmless; annotate it to keep objtool's retpoline
> validation happy.
> 
> Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
> Cc: Juergen Gross <jgross@suse.com>
> Signed-off-by: Josh Poimboeuf <jpoimboe@redhat.com>

Reviewed-by: Juergen Gross <jgross@suse.com>


Juergen

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8830033c-f81a-4986-a4da-7fbe698c2995%40suse.com.

--------------CFC1D0210450B1AAF7AEA076
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

--------------CFC1D0210450B1AAF7AEA076--

--nu3NcC5GSR6EJqL9rOcAw0oHuU6Kbrzha--

--RRRFwUxB40jQ67PQE5AL74fJEjI8sPxs2
Content-Type: application/pgp-signature; name="OpenPGP_signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="OpenPGP_signature"

-----BEGIN PGP SIGNATURE-----

wsB5BAABCAAjFiEEhRJncuj2BJSl0Jf3sN6d1ii/Ey8FAmAKX+4FAwAAAAAACgkQsN6d1ii/Ey+G
oQf/eoplpj2QFDWIFTid8Vez4KRjTjd/mzXQm9uHc+YQlcdomcwCUtD4rIRGn3xaw+rMP02lwEQ6
frxR5hDMLLwJexYwj3RZ6lOySAIXjASS1U1v8OMD/+ZhZU19SYtMkFVV5RNm1i1vAhHMN5uy0iI+
kwu4uRw89iNieE8F9sh3bGX1KRDpuKnU0UVTP3Ebuqka2jaOvfdIglIF1u0h8AUOJ4ImG9Z+4/m1
mZSTd4fjpGZhU3H3US6vXK3WEMczs/M6pWjZNQxodWPpmD+gAStK+XYckLY1FZiNphuUqgK9obOL
9FhXcKxaX4fy9YXEcLpNdETRueWIPtayCYf5hIIMqA==
=AqKm
-----END PGP SIGNATURE-----

--RRRFwUxB40jQ67PQE5AL74fJEjI8sPxs2--
