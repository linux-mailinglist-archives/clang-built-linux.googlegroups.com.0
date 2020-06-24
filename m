Return-Path: <clang-built-linux+bncBDDYJV4J2MORBUM2Z73QKGQEZPHDSAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3590F207F0F
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 00:01:56 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id p18sf2347188pfq.14
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 15:01:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593036114; cv=pass;
        d=google.com; s=arc-20160816;
        b=zC/DOsCt5S+fdoZs58VGeshpycZMuvqy+2o9h5rBHbpwcKbMrxLUW5xiv87uemg+hx
         bNhTmE1XaXnz5mjHr2rPBvGBixDbFdbp8waOZ3w+Mn57YgKdLMKDcUO3ErWfqX9d1syg
         xP0AZAKewqf1jWWjv2zv23fzp5tvQm89VNCl6VTO4jWrROKnNyIVjEc7KC8gLhXQF9U7
         z0kv35tQmbVtz7DRGS4VnM6U5k7lqbuiBXdTL4/RHhiQLEKnGFIQBF4I3rDGGu6t8CMF
         tUXsWU1YndgoXn3qvKFlKJLgFFwL3kiB0kTrjo5Z5bztI7Zd2q+VSsnZrJvBMKBL50yM
         mQkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=JAgyilfNXDq7TBq15BxPqiGr4hSpdf3l38shzY/4IjU=;
        b=pah/BzeHd8u4sxok2BW83dda6trBlUK34jy2CTaD2l0e4twWpDvMnTZ1UwrXMpi34v
         LBA5Nv55OlqJ2lytFpqEQTpdL4TC15/U3nCvSK6t1CrooIZD1A4UX1+Msjp7Ic57TfqY
         Pvt5CueM/vGWnRmAUCnLjS+AT5NTamvDnEsle7glBVvLX4RnDSMs3SedqUAZ14e47tNR
         aTC+fjtqnXKy3oqkSB6qGAvSDAnp+XWaRVxpxrgajyZ9r13t/rACpQrSA0I51nBhyGwd
         DrmISuePIALN8Qm0EHi7Pmf+8UJG+KniQV1g4vYblFfbVGdrnCeqQrR17uKOCKAE6/Ww
         tsFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rsOmUdmb;
       spf=pass (google.com: domain of richard.weinberger@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=richard.weinberger@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JAgyilfNXDq7TBq15BxPqiGr4hSpdf3l38shzY/4IjU=;
        b=KY3OV3ImV/vKQ8vFfYXZoCFyE7tRuLQ/KCGZnx67Zvz4j4xmkYcAzZcSGZP5ZMHzKK
         2RxM2FUGVTiKAGBbh/Yuknd5GS8Q97DfxGzbDfm5qM7sPAX3/LAGP5idTOw+3lhJ/mIQ
         gSuyI5P4N7za1Sx1fSs7i0KQH28mwmfjg01CWwMuRgM44PZa7ieF7IM/g0VZYXu8x604
         PIl/Dua8Gb+Hv0PzAj7O6SnW0B0jHgOU4UZkQOWNFNq4N/eQ5UXjyNjonG4ta/DjkNEY
         OP3CYazN6glTyZhxGXyggOdZQ1+Sm1fCwEFlkW3uJK9sAwKaapAkXr7etOTIVkO1niG1
         vsGw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JAgyilfNXDq7TBq15BxPqiGr4hSpdf3l38shzY/4IjU=;
        b=JENxPCanD6F3vgg3gtYPPGNyzL4JP06BrzMoE6+pYH76sUEUhLIX6dXijbL90R4rrv
         qEl2PABIXdnUMGqAyZPkAV8jA8XcD43VdkgyKW5wxTVO3jdJ41SWUWjofXn+70wYJLPN
         DNrapC+2GOK5HnbmXSORluAOrHw2IZdeG0fsILDsPebh/U/wTE2gNFz5SL/9LDUMFdAm
         NYCIesEoo3dUnN1+qyGC39d/uYPOJb8Rx3kK7lD3SP+vZnm+k6CbSrNfR4ujb3V1GXqJ
         I5xPIGqtMRJTFCB5CF6DVCTE+7fuII3QCyT0g0zeq/+zKw4mA0Wc1CDkzmrRgICaT0ag
         S+eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JAgyilfNXDq7TBq15BxPqiGr4hSpdf3l38shzY/4IjU=;
        b=NN0tWdop0bQw6jrWLMRienAuYTNmb7kfNMqJdeSv3Uuzl1DWIRnRIeCdAQUaIUhZTP
         s6hy8ovtlmSiKVMgKAkUVJqIRUm741sDL1wy6MB/pn3+TR6rNsTaeqkgbZUuM9CzfjYa
         RWQKyFbHMjXBWeAcvMF50EMVq3EeoLvu70+jtW8EsXgNxnEllNQJAsaC8K3sddlvpEPi
         k3+0gypMQ8fhu1CB8sOKoYOY4lXSqtCWjnqcDO1fJiNvvQpHTq0QfSSZB2fje43gFRHU
         gt3NCSIiVKqsLSlgvfi2MrEhOg89mX4bkE6stp0s9KYT9mBdDrjDNQ0+pyAGkrGL+4fP
         Vvkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532lZTLb5nfFj+l8DqdvYkQlG0iD1msgmF7bcdxygr0hlw6rF18+
	Q/WypShpJ2Vl0+5NLs7iSRI=
X-Google-Smtp-Source: ABdhPJyPwAFLW5FjFYywgvoqo5dlD1zbdXFSsvczOcM93Mn3dHi71pubsURZD07HfHrdoSXr4o03Tw==
X-Received: by 2002:a63:7453:: with SMTP id e19mr23791678pgn.450.1593036113932;
        Wed, 24 Jun 2020 15:01:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:5982:: with SMTP id p2ls1397922pli.4.gmail; Wed, 24
 Jun 2020 15:01:53 -0700 (PDT)
X-Received: by 2002:a17:902:7b90:: with SMTP id w16mr29330279pll.339.1593036113270;
        Wed, 24 Jun 2020 15:01:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593036113; cv=none;
        d=google.com; s=arc-20160816;
        b=suL2Iz10Nldhp7LPEu5oWcvaimzwXlJU9OrpMWYQWghEb8dzfwBGB+7jKPjMy/vrMu
         vkO/bDnrXRBX7ggAruk5CxY6RWR8my+uE04ZSvRZWdC72zik/QPSxeEmsXHJB1X9b+k1
         6BmNMIFSn5I3PxbtMO65RLVFTZGChRh8UvWeOZL7Nz+LoNALPb+s3SQ8sEsXvF8ZyJBq
         iz1q1XMBHNqcCWJ1VPe4f+B9UvipQ+P3kuNL2nxl+ZQTApYAjeALx08mZdd8btS4BC6m
         qqoTt1K4QgVb/itJz73jXmeaXBKSZ2CxZbTSpMWX0zGXhi3hIRrF5v03wxs5wE3KpXK9
         gbFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=S+dO/ioQWt3T8AvV5aff/AMizNQQLCT7fqnhXdAkqk4=;
        b=OFXeiENg4pU5tKu8WITYW+59aosVXzDyU96ETfEzGgRdIaaNngdJUrkUUk5eeGYxQa
         1YDgY29VhhF0R0o/YwN6/OJTwLJlnBvBDS6Tm0PgNbNOdCPA8Ton4JD/bksfPyUZQjn+
         WbFVsYrhuLxqBvinPiIV4YqwxT82a9i4ABaYQfdecIWv+4cLmfR0XsW4WAeWsfTu2Zyo
         onSHH8xyQy8l33bGU0cHOtTlYxObO716UQsZ/TPV5cFZCQWMsylko9wAy5aXDlQlmkVa
         3eTKF9rKWv0Y6U1Y/w53gpu21GZP/z7bHbO1Qa1MLANplRd1TGgLbVyqY11ojTHfI79m
         3ALQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rsOmUdmb;
       spf=pass (google.com: domain of richard.weinberger@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=richard.weinberger@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id t72si1309029pfc.5.2020.06.24.15.01.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jun 2020 15:01:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of richard.weinberger@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id b4so3441493qkn.11
        for <clang-built-linux@googlegroups.com>; Wed, 24 Jun 2020 15:01:53 -0700 (PDT)
X-Received: by 2002:a37:2781:: with SMTP id n123mr27646540qkn.106.1593036112542;
 Wed, 24 Jun 2020 15:01:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200529200347.2464284-1-keescook@chromium.org>
 <202006231610.4993DC5@keescook> <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
 <903628180.54697.1592983405305.JavaMail.zimbra@nod.at> <202006241335.2C0FB5DF90@keescook>
 <b97853f0-c4be-7039-1d4c-96b3ab802472@infradead.org>
In-Reply-To: <b97853f0-c4be-7039-1d4c-96b3ab802472@infradead.org>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Thu, 25 Jun 2020 00:01:41 +0200
Message-ID: <CAFLxGvxiyyX9s=y4phGxvWh-vonS1WPOUbRZr9mgq-B+wY+2nQ@mail.gmail.com>
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Kees Cook <keescook@chromium.org>, Richard Weinberger <richard@nod.at>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Prasad Sodagudi <psodagud@codeaurora.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Amit Daniel Kachhap <amit.kachhap@arm.com>, 
	"open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: richard.weinberger@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=rsOmUdmb;       spf=pass
 (google.com: domain of richard.weinberger@gmail.com designates
 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=richard.weinberger@gmail.com;
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

On Wed, Jun 24, 2020 at 11:29 PM Randy Dunlap <rdunlap@infradead.org> wrote=
:
>
> On 6/24/20 1:36 PM, Kees Cook wrote:
> > On Wed, Jun 24, 2020 at 09:23:25AM +0200, Richard Weinberger wrote:
> >> ----- Urspr=C3=BCngliche Mail -----
> >>>>> Regardless, it seems arch/x86/um/asm/desc.h is not needed any more?
> >>>
> >>>> True that, we can rip the file.
> >>>
> >>> Has anyone fixed the uml build errors?
> >>
> >> I didn't realize that this is a super urgent issue. ;-)
> >>
> >> Kees, if you want you can carry a patch in your series, I'll ack it.
> >> Otherwise I can also do a patch and bring it via the uml tree upstream
> >> as soon more fixes queued up.
> >
> > I think the lkdtm change will tweak this bug, so I'm happy to carry the
> > patch (I just haven't had time to create and test one). Is it really
> > just as simple as removing arch/x86/um/asm/desc.h?
> >
>
> I just tried that and the build is still failing, so No, it's not that si=
mple.
>
> But thanks for offering.
>
> I'll just ignore the UML build errors for now.

This is a allyesconfig?
I just gave CONFIG_LKDTM=3Dy a try, builds fine here.

But the desc.h in uml is still in vain and can be deleted AFAICT.

--=20
Thanks,
//richard

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAFLxGvxiyyX9s%3Dy4phGxvWh-vonS1WPOUbRZr9mgq-B%2BwY%2B2nQ=
%40mail.gmail.com.
