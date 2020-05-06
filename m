Return-Path: <clang-built-linux+bncBDEKVJM7XAHRB5FCZL2QKGQE3227LEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FEFA1C6E60
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 12:29:08 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id p8sf1083765wrj.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 May 2020 03:29:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588760948; cv=pass;
        d=google.com; s=arc-20160816;
        b=X1eLy06YxC4b3f2CfhYfy2nPcfLLmPlcvplUeRTuhHdgMesqgJmSjvC7uWGOBQKFDM
         8JTCU+M4U1MpekoHNlrQibNozia+JWIGUQxoWhdccBkr+3w7+y4s0qUz70jVfZ1FMF78
         WkGUqcuNRCxqw0EGc2JYskhbfiVFVgrekWwPz0LBgsMHVO+0NrCuovzRfpQ/W0Wt9F9T
         HvIrxg1K3NqlC9k40erQdUrKQdcyNVS2uFxDGbVK+iJ9P3KgQiuNsVwiqph9a3tg6N4O
         j6dAgSEpcTqxiP0dPK26c5/obRoeX+pGzV7EpsHoUKGH2QlemqdDj5/DVXSaZHSAANsd
         UfyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=xOSbz8FPNiKepvtPQVse6jdQPyk5QxkGRFQnces3zVs=;
        b=CY+5xxr4bq9HQcUjqv4Wj8nq20CW65P3IrEt56u4GPxI8CQR7vkCplZiyErF+J3KwV
         dCWGFBH+ApiEPlqcbFMkvBv5ZZYbYwUVfYH0urt9f3bw0O5oPOVT/p2WhMLzmVjGajo6
         srjW/W4WU07nN7u7rpgeObrflS7F44/cA2cNjCBkyJXKFgarFPPTfrPZT8/aqlZ+47xp
         SruJW3jGuxJhrOBNvrGHRHFJLH6L1Q79WiW1kyPvpFAUmXdnibst+MCrCXyW3eY498lj
         8TrT+mYIu+CnovI7LqDCbX3wQTPkjF9JcHZcJ2e3927uNAv4G5WTaCoGNVg3TJpSgKhv
         e3cw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xOSbz8FPNiKepvtPQVse6jdQPyk5QxkGRFQnces3zVs=;
        b=pmWPLhTNNW0aUMDt9Tdw9zKvoIcUvkipS+PDZLTp/rUYc34jusBlD/+AOx4wG9nPcP
         KF/SWpPEvvhZWSajDPAVue1cOWBgjsj5FQIiLE39cFfmM/cNH1u9RfP0ay7BJQJVfjHK
         ymCqhegYBgXJW/1SdX4doRSJuyNGKa/dnp1OrAk6IQlKrYoaY9wsiRC9sU4WLDKwIRkG
         8xGPJlmpJNM4InXoejcpkmxXFsKkpzmdbAj0EFN1JJIv16UNWiQxlnlsT99eVcd9d08i
         I58PNiIK8YSpXGeW1dQBvSrTI+u485iNm10fhzJC1CJxU4wb5QjvMs/hx3ZAOr6r4yk2
         zx2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xOSbz8FPNiKepvtPQVse6jdQPyk5QxkGRFQnces3zVs=;
        b=iti/NqVXIeh3609+rXfm4i1ppzkaXSiHr+EgakyAXRJjSH68bq6nmrZ0I3a4anfG3l
         yaKzeaaBYyCwned0HDhPiiNHJxYDkFSumRpP/6Cv+5wbd61mZ5tgRPFrxV9gX3l++P/f
         avu+nSLYmkCHO4oT85zyxh1Hs5wj6qLAlhTBumQYKTLDS8XABh1gnblRZCcmKpsQTxmN
         6xh4Dl8JRSA7L9XifSX4kaEB/1oz5qqTrff0nHEwZsJLgY1dM8C1sggT0MrK1m2/Sce7
         QqS/e9UXjA1MbqyM2UWnE9BVXKwWc781YDziIh5sMSqWzrUcjgDqpLgmaB2F3k+/HzEw
         yrkw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubalYyoj3Ow0KNpDchnHt99ZwG9iWQ2U6ws56CLOKPAXVc/dMI9
	uf32CYX0zhB+b/P6Q5IE+BI=
X-Google-Smtp-Source: APiQypJJVYd9NTtuR8rEzXfVhPDDAA9p/CBxSXDBBkSe4fbkyA9P1eoELexVaj2gkwOfrO6GmLhI2g==
X-Received: by 2002:a1c:4946:: with SMTP id w67mr3824388wma.38.1588760948136;
        Wed, 06 May 2020 03:29:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7ec2:: with SMTP id z185ls3071165wmc.1.canary-gmail;
 Wed, 06 May 2020 03:29:07 -0700 (PDT)
X-Received: by 2002:a1c:9dd1:: with SMTP id g200mr4040345wme.82.1588760947590;
        Wed, 06 May 2020 03:29:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588760947; cv=none;
        d=google.com; s=arc-20160816;
        b=ZEVhe9XgGDerXM8MEG8cyk9DQadK9tT3BkCCsX/+wJw3sn9Wzv3YebXzhuDZ993MA9
         hiVPYbL034M3O7oDu4xWSGGYS1UP0B/eelqnc7Cr9ZC6LV6V3RmdZcvgo7x5rYiY0H09
         SfrXZtFN+3sTR/Rj9RirLbf5HPlUon9lDpn3qOGoKpJX/tSIPzUetPOUFOfPyhRvxQCZ
         ms/Vtdc3IVY9J0w2qujm35Yd6/kWNlJ+nRoloRV259nrBZP8i7kNRO6bsePBpARY+qBA
         WNZl1boFETe+e3B3XzYjIJ0ttBaSmukAZzdQPWR/QAk85wXsF3jif0TWihlAQPOIOixa
         CTTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=mYoOAtoaZBfzfuPAi/9+TvghdC1Qq7GX7bW9wJSfF5A=;
        b=fA1m3v/uikAkkvOKJLvAcEgXvmtlwCT0X3R7X0Nfyy6iVXeiH5gDLSizMx/aU/sn6J
         BxbOuqo79q/zSGDRb49bUkjqMKxfwcSxsohajbXw0Y6IiufNsG28EiUMYcRYltLhPr4t
         NMRWJ6rNmiK3v65xBW2H6RZqWBQ3mEpIPDg6Waj7tTYw+TLfoeUCEhqomiskbuNZGVya
         ONeQtEycUBA4pK1MHWFylD+3oFile55y3sFU3YBGm1HcH9QoTdPOQtqFezkkyAz6iJbw
         Tz2sG0XEiCc55hJZIqc3RXUd83Q9lbBJzt1zVnlbLz+u58XJikjrlWMrVzbY/YFP8oaG
         sJmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.10])
        by gmr-mx.google.com with ESMTPS id x11si76809wmi.1.2020.05.06.03.29.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 May 2020 03:29:07 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.17.10 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.10;
Received: from mail-qk1-f176.google.com ([209.85.222.176]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1N7yuz-1j19e403SV-0155My for <clang-built-linux@googlegroups.com>; Wed, 06
 May 2020 12:29:07 +0200
Received: by mail-qk1-f176.google.com with SMTP id n14so1309525qke.8
        for <clang-built-linux@googlegroups.com>; Wed, 06 May 2020 03:29:06 -0700 (PDT)
X-Received: by 2002:a37:aa82:: with SMTP id t124mr7608771qke.3.1588760945935;
 Wed, 06 May 2020 03:29:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200505141546.824573-1-arnd@arndb.de> <30d49e6d-570b-f6fd-3a6f-628abcc8b127@suse.com>
 <CAK8P3a0mWH=Zcq180+cTRMpqOkGt05xDP1+kCTP6yc9grAg2VQ@mail.gmail.com>
 <48893239-dde9-4e94-040d-859f4348816d@suse.com> <CAK8P3a2_7+_a_cwDK1cwfrJX4azQJhd_Y0xB18cCUn6=p7fVsg@mail.gmail.com>
 <2c6e4b36-6618-1889-55c4-16eeb1ef6f57@suse.com>
In-Reply-To: <2c6e4b36-6618-1889-55c4-16eeb1ef6f57@suse.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 6 May 2020 12:28:49 +0200
X-Gmail-Original-Message-ID: <CAK8P3a05wLCy0GT88mc451h3uXuU86aZ7XC=YXYXi12J0dFJkw@mail.gmail.com>
Message-ID: <CAK8P3a05wLCy0GT88mc451h3uXuU86aZ7XC=YXYXi12J0dFJkw@mail.gmail.com>
Subject: Re: [PATCH] xenbus: avoid stack overflow warning
To: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>, Stefano Stabellini <sstabellini@kernel.org>, 
	Yan Yankovskyi <yyankovskyi@gmail.com>, Wei Liu <wl@xen.org>, 
	xen-devel <xen-devel@lists.xenproject.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:ScJFKVRWwLAyKvPOSfSjaF9N4W6ByMtSOhnfhvS3KEcffgoOZdu
 E01UwpKwBr3phy1vgxS8lTWCvZ1pJ4noiywVSM8lWrVn+EnTyMwo5JhYl6HabRiea6Gw1ox
 I0mMwCPNqMNWNZp9n0QqpRoxySMiujD/WkCGnfebtQWD7r79KjF3bjj56sr+un7ClwdMLiR
 enGepfVJgsSPu+mAi2bAg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PlHf+A/lSj0=:RIQsb3m+R8km7wIoF+7SSM
 tgiLT38TX97Ua1KPZraTAw0poqwk7+L/lHGYpyFcBvvXTxtPZI5GfNMX0KUKZNFNRA/7RDeYV
 n2l4CMJcmtWLE5esXuduQL/yfbn05M9Pd95PT7FOFWT7CDxbLCmTuwRhPAm27gwbkXsBLw5CX
 vRqewjy9PSJcd11LYoaxUWCNpwgT35zAW7WE01otj0IA5cbuSSKweaEkDxJxQXZr0HNZIRO+1
 pt7w91SjsFI2G2i1Da9nZxQ+qSbNFAS3CuOlnU8gRTsELDXAYOt42pgMqZIMvLFEmSAqVYOQc
 qQ2ZjxdNj+ijlrkbsk2r7j98I8U0MURMjIkHRH1P3mj3HG2orqncUOiDpMIIiecYEa2CaLY3k
 i9C8s1mRrRMw4vmcLavQAcLyDXxLY3jZxYdlQqwvhbDo+eJqrLr0d610Co1SXUDyQ3l7hY7Rh
 WrCAFsscb+Gko1ochzG4r9t7YHw92ZPxZWvWfHpObS+4G7rGOY3+rYA2o25J++bfR6xUEnz9e
 4CspzEi43hPJi6KxPybYHRFcP3bfeJqbNZBG7SqwzVS/q3DHFl66bgIB/lgo/K3AHfK2QXx1k
 M2z0cpO4f13iZ3sZSKHyoRKe+r92AUN2rlcFZAdBS78i5bZt9eYQqVuhwAydLTUWa62x9KK8X
 U+qV6V1rOGlQQXqbNty987O78bD6qN29dcngcK7fvtmlskutiYtaPPlutK1gdZ9C4I9KYxoUW
 U3BYiOpFJFkYQ7KH9nAGD3v6O/soI/XqTFuJ11hezpp7G0JJZvpFwcxDmnPgmK9DXjpiOAEkJ
 v7FcQK3a7Adq/lKWBE5V0ozLdcVCaAxP2QJSthJOiODU1fDyIE=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.10 is neither permitted nor denied by best guess
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

On Wed, May 6, 2020 at 7:12 AM J=C3=BCrgen Gro=C3=9F <jgross@suse.com> wrot=
e:
>
> On 05.05.20 22:57, Arnd Bergmann wrote:
> > On Tue, May 5, 2020 at 6:02 PM J=C3=BCrgen Gro=C3=9F <jgross@suse.com> =
wrote:
> >> On 05.05.20 17:01, Arnd Bergmann wrote:
> >>> On Tue, May 5, 2020 at 4:34 PM J=C3=BCrgen Gro=C3=9F <jgross@suse.com=
> wrote:
> >>>> On 05.05.20 16:15, Arnd Bergmann wrote:
> >>>
> >>> I considered that as well, and don't really mind either way. I think =
it does
> >>> get a bit ugly whatever we do. If you prefer the union, I can respin =
the
> >>> patch that way.
> >>
> >> Hmm, thinking more about it I think the real clean solution would be t=
o
> >> extend struct map_ring_valloc_hvm to cover the pv case, too, to add th=
e
> >> map and unmap arrays (possibly as a union) to it and to allocate it
> >> dynamically instead of having it on the stack.
> >>
> >> Would you be fine doing this?
> >
> > This is a little more complex than I'd want to do without doing any tes=
ting
> > (and no, I don't want to do the testing either) ;-)
> >
> > It does sound like a better approach though.
>
> I take this as you are fine with me writing the patch and adding you as
> "Reported-by:"?

Yes, definitely. Thanks!

     Arnd

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK8P3a05wLCy0GT88mc451h3uXuU86aZ7XC%3DYXYXi12J0dFJkw%40m=
ail.gmail.com.
