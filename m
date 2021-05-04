Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBHHWYOCAMGQEJBRQ46Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 06CC93726B6
	for <lists+clang-built-linux@lfdr.de>; Tue,  4 May 2021 09:43:25 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id a18-20020a2eb5520000b02900beebb1aa69sf3383631ljn.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 04 May 2021 00:43:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620114204; cv=pass;
        d=google.com; s=arc-20160816;
        b=XugPZORwgTk6oxWxTMBs1BH/ReF7QL+RUYtvaRvb+byl0/jMPNSGs3Q4Yc4n8+4ZNx
         OY4P8RkyzJCtqt7a5agsJ/S5IErOR0x5s2cKPPV7T3gEvT3IGxtixsqoS0o9baHi2RtO
         1Z4Ikb91wrHY4DxDbyk8rf4SzgyZVq89QpBew0/iIN9S+z0W5sZpYEGQErbw5jgO/jl8
         eE/YfjgVCaJxoorIhKlGY//veY1E715ACwYeyKV1ltzRttV3dgudfAOcc5EkQVvCaHBz
         vbK9BplyvwIXZuneqhhHm1ehBOi8zLQdrMrWYsf2/L7VqZyBJlA5jFkeRWRxh3dA/3lR
         8bsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=BhtI4pvyKtXSzGdoMsdmORFl4M2UCYJpmPt8kjPbbi8=;
        b=QU/13YmcgSf7ckyRHjbs2fYWy1WQBGpn5BbGTqFx5TAgxLDWktYYmXYvDJ2W/0biQ0
         9+uS71UCkpl5VFk/gDTSTpm2QYwaCcpLDZyrNeviaV/b+GWym2B9bqtt41wZ1Q/Xkaxj
         VDbrZLqmn3sbLC+UQTnOJ6Wfc9xPuvZbShkVDe1quuZrhp1XhR7h10tOymA4HzuJClul
         3CUQpsX6Y0KvVUaBGRD7sSk1SirI3Es0Rv9t/9VTnothzMr3M3Hp7W7GoKcJ198MjWKb
         FEeO4XBFlJDh75ra5pOoyBDWjCYLebYdx416a+xgtITyyL77wYad1dNwDmdK2599Z0nw
         CosA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BhtI4pvyKtXSzGdoMsdmORFl4M2UCYJpmPt8kjPbbi8=;
        b=bjiDOOiptPIbj55gUPD6oX025K5Nqo0oOVppYa8QrS3/+wykGrl131JMfm6z2XMyd6
         yYC9AHffl3RXIwcIiwAQ4PX/NjhtHOeo1JbnHEGpA9pRDuK1xNR2o+xp28ELAoZGTn5c
         NwQTYUOn9pNInfnewNFEVT4Cq85MovQctrxuOHAaSDq4cIw0nDUhz4lwudYcyIYLRmUe
         yWR/3pw/1Q3txKoPE3cQ1c0MPkpv8futYagt4ZQ9D6ULfaFPRzGoeDvmFtk+Pd1dLxr5
         nWVkUfKNYaAxUWi1GXKbs2iNpCvz7KxjPnALAfftNiFU5GDf6ubKC2dozFoujI9cm9Je
         BGyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BhtI4pvyKtXSzGdoMsdmORFl4M2UCYJpmPt8kjPbbi8=;
        b=bE1eAGYVXHBBgt5NbWkcagmyhNBY5i0CoS1JNEmB2T3yk6hKjXCwpYE6wLVwMqPKWc
         oCCPpOsdMt21+7H3f/r712Fipc1Fzc5JG2luu+Sh2tIwedZX7UFuhuw8OGH7X/QHLSjb
         G2Cj+iGz+4D8HVWkj/wQzEArZsotK9uG7g5XTuNHi8HKrSevgwSAQw0x9YENAAO9HnNA
         1thXu5kAgJlCwefIBsX1U1Hi1KhfYS2ZDU4ctXDjvF0xpnTCioHqNlpN3tufatrIGwhx
         Vv16mPVawALZzspiOGgXl9QQbT9wp/MWcpKlB7d1S799OgVFkDYkgKWUGxCy5LvBKkyU
         klgw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xeveN/cYMbcroweSYUt7CRZkRFFvDQEwrPaoX06Q1zrtS9JoJ
	3He8lWgjKVG2Zi9IcADZBw4=
X-Google-Smtp-Source: ABdhPJwwEk+g6hAbIPKByqtXSDl+oQKwkY7e6J6gOHnWmuKqIvBAr4DiLgqQbTF/E+XRdWizyiJFLQ==
X-Received: by 2002:a05:651c:102e:: with SMTP id w14mr16052390ljm.238.1620114204628;
        Tue, 04 May 2021 00:43:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:b07:: with SMTP id b7ls1413795ljr.2.gmail; Tue, 04
 May 2021 00:43:23 -0700 (PDT)
X-Received: by 2002:a2e:91d8:: with SMTP id u24mr11586504ljg.471.1620114203589;
        Tue, 04 May 2021 00:43:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620114203; cv=none;
        d=google.com; s=arc-20160816;
        b=QHYX+EZh4Q4dkGPuopPPDVlnGvNLFB6M2nZLb+YFouVp4XaccY+TZ+qOR6zjG9Eda2
         dE11TZtRVWaSvvxsVganyLpzzA0dOgys5SZUGTAanbHIOp9yQVtK1syTLz0kpLlxEKMD
         eX+E9dPRHtGtsnoa6k29LlmjsNnfAn53ntE6icHIrzl+zKzayRIzW3oqJBRGaOT2lzff
         79YIpa186R6Lw5IhFp4Insck9HbNklI6J2n+oBZdHjvNxQiAD3rnG5xHjNPvVsp02gaT
         9Y1+Xp8nf1lqL0E7O7YQfX7giuwVi/UKegDFG7C0VCtcLQHYP3raALtJ/9PKIL14QIAR
         SpZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=RsxmJ3CkjmkMpHegsJNlfhO/q/121mECPPSz+mdU8Vk=;
        b=bbnWXCr0neZVCXW7Am33E3hlrXpL9474Mn9pUgGACRiNuOFEcnEUdP4abHeBIoAEWh
         l4cmDnIcOVFFP7yUKXKi7fkaAJ50RFEQPMKzkOSBjSL2kFBHl8dEFxrQaTkVT8BEfeVR
         P5MtUicVuJjj8dGCRNRQWFh+anbqfQ4ClQGh9LbXDQTFjJWSCdXS8tPp9qn0ZGJxG70d
         iNUxgniMWO3lJ+qk8lGpwOCd6c0oNC6KwBclBjifq8ciF4aRtquonS9qiPitvNxq3Wpg
         nnIBBtR91YPG+2ORUFEDrTyKfSRGootgunZv/la3CJHvAuj/Y+shGNz1WSz7H5tTsBXa
         GiNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id t14si114646ljo.7.2021.05.04.00.43.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 00:43:23 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from mail-wr1-f48.google.com ([209.85.221.48]) by
 mrelayeu.kundenserver.de (mreue107 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1M9Evp-1lbLGn3rkt-006L2l for <clang-built-linux@googlegroups.com>; Tue, 04
 May 2021 09:43:22 +0200
Received: by mail-wr1-f48.google.com with SMTP id d11so8218611wrw.8
        for <clang-built-linux@googlegroups.com>; Tue, 04 May 2021 00:43:22 -0700 (PDT)
X-Received: by 2002:a5d:6a52:: with SMTP id t18mr12372887wrw.361.1620114202631;
 Tue, 04 May 2021 00:43:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210430111641.1911207-1-schnelle@linux.ibm.com>
 <CAK8P3a3mCujxC0=_cL6Z88Xh2cb=OY_Ct7DVpJNvRn1v9=FhkQ@mail.gmail.com> <9e52895227515143bf3cd9197876ff1ed596682b.camel@linux.ibm.com>
In-Reply-To: <9e52895227515143bf3cd9197876ff1ed596682b.camel@linux.ibm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 4 May 2021 09:42:42 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1F1X2SUZLLxK8_QriRZjYyV2AYJFNQt=sGZcWP8yovaw@mail.gmail.com>
Message-ID: <CAK8P3a1F1X2SUZLLxK8_QriRZjYyV2AYJFNQt=sGZcWP8yovaw@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
To: Niklas Schnelle <schnelle@linux.ibm.com>
Cc: Vineet Gupta <vgupta@synopsys.com>, "David S. Miller" <davem@davemloft.net>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>, 
	"open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>, 
	sparclinux <sparclinux@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:s3Cjp/3tWATsi1vUMG2SdiKqJGeTzDqTYmFxzetdZh1ue4TazoC
 e0r5BA/VLpebdOmjMbOklkXAybiHMcvUSeNEdlvwHB8RH9VC86fVYSfBtSC3pVdM7NC+H9s
 VT7opgW58cOoHENKkROcYNzEkHeaFPZ6CGN1rZINxf7LlrLikyDqnUAn3XQOG9qF8WeTVGA
 uLXWDfgowsw22N0oNzPdQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Fed4RCoM5QY=:reeyL4t3AMIvADKAYekhxk
 WK7FWlDa/4RoYd5PXxPXBWRD6NXfAgE3TtPNJO9RPV0b1q/2sALcMV1GLRlTOo7wflbFjT9Ot
 90xutAD6gZMwBw65Qmj4sKvUOEm1y7V1xSCHZKnpmDcD3Q8ZTxrVPwJFsENel8mUAfIpi5k0S
 gEkpf9fKAjPLCarly98W5zCQl2KTEbMHOaRSlslzPUHMFPDbBeA5Yl5zDQCLC48O2TiF2lPL+
 KPapRfGGbm2R7m70tiDxJNxrbMFq+AC5O/NrySXQV4zuXXRQYq00fIAcvSMfsm7jiwMLQW/do
 MKRWqKiQ8KUnXgO4/Tt6xLZGKLgvbZ9b/+edxTxGfjul8EvnsQ/T8GDskNkgCzSzMO6wMat8B
 ldVR5yIBA8RR/Awui6SoNTIhwfrf2Df2+uuMvRJZx2rs9AqwjbGa8LAQMgTnL/Ue54+WVMrSi
 4e8pTh0EiPrCeyT/3UbLwM/FBJZx57EDa2z5yClvGaaQlmqIjc271Cdfpvp2PEv4fuXxMQDkd
 uhusM46vM4ppzVGfiLFUMO+f3kWIyVHVOlOpip3eMhitNW3JA3dBM2Xoa8chUjaoRjAS11ETA
 1nODu4yu6VkG8VISVCsBFk/raZXF8R/h1V/iHMycxt1pBp6HUZ4UqbKhJiGRd2oQHF6ymAypM
 bCqU=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
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

On Tue, May 4, 2021 at 9:40 AM Niklas Schnelle <schnelle@linux.ibm.com> wrote:
> On Mon, 2021-05-03 at 18:07 +0200, Arnd Bergmann wrote:
> > - for the risc-v patch, I would suggest explaining that this fixes
> >   an existing runtime bug, not just a compiler error:
> >   | This is already broken, as accessing a fixed I/O port number of
> >   | an ISA device on NOMMU RISC-V would turn into a NULL pointer
> >   | dereference.
> >   Feel free to either copy this, or use your own explanation.
>
> I mixed the above in with the current commit message:
>
>     Without MMU support PCI_IOBASE is left undefined because PCI_IO_END is
>     VMEMMAP_START. Nevertheless the in*()/out*() helper macros are left
>     defined with uses of PCI_IOBASE. At the moment this only compiles
>     because asm-generic/io.h defines PCI_IOBASE as 0 if it is undefined and
>     so at macro expansion PCI_IOBASE is defined. This leads to compilation
>     errors when asm-generic/io.h is changed to leave PCI_IOBASE undefined.
>     More importantly it is currently broken at runtime, as accessing a fixed
>     I/O port number of an ISA device on NOMMU RISC-V would turn into a NULL
>     pointer dereference. Instead only define the in*()/out*() helper macros
>     with MMU support and fall back to the asm-generic/io.h helper stubs
>     otherwise.

Looks good, thanks. Maybe split into two or three paragraphs for readability.

     Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1F1X2SUZLLxK8_QriRZjYyV2AYJFNQt%3DsGZcWP8yovaw%40mail.gmail.com.
