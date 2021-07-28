Return-Path: <clang-built-linux+bncBDNNRXXFQEGRB4GAQWEAMGQEMUJJGAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 815E23D8F8C
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 15:49:37 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id br20-20020a0565124014b02903a914ebbb21sf1068780lfb.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 06:49:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627480177; cv=pass;
        d=google.com; s=arc-20160816;
        b=u1qCkVnmEkhxXxjqKy9pd6TY2iQGvEPixSANL2FwwLi1xpXrBrn+LL2Zg0OMKDcJaS
         quMzXiJdIqQvllsthFSk+5pUtl+6paNV1h3wf/1W4McQKmODuy8BfnKeCMTbYWavabpm
         zVeFIQpxFKAEXN0/Pv3xB/IF7hIFrQTItTiqvH3dVziR0hQkvCaURNlyAn1enjd1wHP1
         bp8ONwkwJhJATzxoVh3deZ82foRWxT1E8vugCqUojweG6TWabZlyeDbRSayqkTH4/iZP
         kJFcw4cDR0n/jmjdgvX1Wa9EsQ56HL5WcPEWzG3FOHsFwS0fTchyPkUiutVchusLdX93
         Ikag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=MRSuQnqBwSCHkTKniMJTzxURkBvpOtgA08KrKI8MrtI=;
        b=NRKF/PYDIo01oGjWZuFDLYNezLF7RQ72xmKAS9ADw2vkFk1F4QWP6Mb7We8J8DFXZX
         rWlSF9FDow/iwClkhanQASjXvaDk0w49qq6OA2TrFTdjxN0bR8T9MzL9Fddw8yLyToyX
         yRISGMDRufQ16yQAYmqxC47h0xLSAsyMQCV4pFhWQ7jxKyVOvlwms+J3OfRA6DHprCPm
         d2GpXzttnNTVEu3f+3El2KD9N25dtygKRKHoS0ANPGBTHwOzLbTGxuo3aS0zXBjsdtJ4
         /soZDCf7y+th1nHugJbWHeNXg5bZj9XsruaBay9i9/cnnmICpAsarpKlbigDi5A+N34u
         tq6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@atlas.cz header.s=mail header.b=eTjGvc+8;
       spf=pass (google.com: domain of arkamar@atlas.cz designates 2a00:da80:0:502::3 as permitted sender) smtp.mailfrom=arkamar@atlas.cz;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=atlas.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MRSuQnqBwSCHkTKniMJTzxURkBvpOtgA08KrKI8MrtI=;
        b=qR6vGNDrU+pHikucHnbIChlOnU1TJ4AEIxzOATRvyJxnT6kzUzkqTRuHU93uOASW0b
         LRWX88hj6QE5KIGwXx6CvA3Tk10rfBNstC4qzRlD/ZvPP47/ZUCa/umWUSXSfhnWwfke
         N5qkwbCepGqiZagEIr0YohaIs1kkcRxGPAWzMGFISN0f8+8riYfrvO/VncL4OfFLS+0p
         0b38vz1d/c0SgISoL6SeO2okhsvQBaihzebCXEnYTY+7yo0ICxJYdBdatwhIX9bX461X
         bRmBVREjsCsba0kDS7yPDgNskm4n4Ec7cc9wT0DNKf0hlcsW7A2BC4zcaQqli/ZSrkHd
         C0AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MRSuQnqBwSCHkTKniMJTzxURkBvpOtgA08KrKI8MrtI=;
        b=XkLiM/JFc9KKbTf9fUq5Nma7OSFJLFHnJpJ9I7GefLbZFxYKyCE65+ALqlYiyVDM/o
         KpT4G1MN7XLE6pnSw4Y07FKFgA5mx0jSGzmILTY/sRvaEDvKjlcpo/af24uEzx5IBIzy
         4a8UStWaidpgOTGh3/22Sb9zEHZVfmH5GhI/J7eiHrzVinhl/uzZbIslE6t5YStBRgLe
         rf+EgZwW5hi+QRKCjOOpfmH3y3TSFGQCk1entbzdhwpMfBlKGjngMEfhcZOH1Rtedimf
         zQbUfjRrZUirdCBBL54ZM7UE6AXkxpgH6GDY6Zhe8qpkv9XMANpgYn25nxJZx4BqmHoQ
         rp4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532W/Tpb1AMLlE7QW+OTH2/3ve/TYPod7O4mm0VfWWPSYDKpeQat
	2HR9kXa4ffuLUAnctwVEujU=
X-Google-Smtp-Source: ABdhPJxYE1U/F5dVeJU4LDFWhBuMK0I4Y4PTgKes1vUrspypDgVuY4v1VRjHFfW4VGwTt7iaUX787Q==
X-Received: by 2002:a2e:381a:: with SMTP id f26mr18901564lja.416.1627480177029;
        Wed, 28 Jul 2021 06:49:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:b89:: with SMTP id b9ls1817284lfv.1.gmail; Wed, 28
 Jul 2021 06:49:36 -0700 (PDT)
X-Received: by 2002:ac2:560d:: with SMTP id v13mr20426693lfd.518.1627480176029;
        Wed, 28 Jul 2021 06:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627480176; cv=none;
        d=google.com; s=arc-20160816;
        b=cuNJ0ffck0zdgt5qnAqdiBpHyIUvsnHBOyJHfcuJnqJYB5bbtgL9By5OC1QpSjx8cY
         +k/oZfhWxUiRjmPAzMTPrj87bKKEjZRT5PYSWaFnAlwWZCECGYJph3fPUVGHCChWyG5c
         BWlRO/qxT+ATcnnPExAiRgHxdz5BHMMQVeqhplEMTWndfOPamhI0keDBIIA9rJqr5PHx
         Q1qA1xS92uqL3UrJPkWgyYbMsfDYzSsiX7+OfuTXuu6cEzdAuXhrOyAnfQfjpNJPrFJ5
         ArmRNv+Vn7xGzc9HU8i7+Hl2F+tSmD/vuqG1oKYB4ZzLhAQF7xo53qNYQ7ya6pSsM7T2
         dv0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=btdGKWwqdzolFUEYa7m2BSrGTcmJuco6D2JUC+cfccY=;
        b=tUsgKMhUMt4Oy6uh1TXt7q47SnRvJaQydoxJxSLjqkE1r7AxJIuB4sU4YuCJYc2vc4
         j6ZEB7d2okJ3GsGdxGzABhlXW4jHRK/5K3sBRGRV9hmowKq3N7Yti1XmU9Y8/AIqaGvU
         0K6bB+unN5LZUQD8xpjfJ49nn3pPKg+t640gmsznAtRbFS0SXZlcZwuS0H+1fzc4vwnM
         LY/yIdj7+1sYAi0xLRPUZtvoZDG94EBxXx7Tj5qFQG5D8GpDoqQwRcaCqQTrBLYzYK+7
         l6WDZAcGp/fancbliMbZZj4cdOlf326UbQjK42sfbfrvTlIlt1X1hdb5552WOZiCPQYm
         +kdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@atlas.cz header.s=mail header.b=eTjGvc+8;
       spf=pass (google.com: domain of arkamar@atlas.cz designates 2a00:da80:0:502::3 as permitted sender) smtp.mailfrom=arkamar@atlas.cz;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=atlas.cz
Received: from gmmr3.centrum.cz (gmmr3.centrum.cz. [2a00:da80:0:502::3])
        by gmr-mx.google.com with ESMTPS id v194si2018lfa.1.2021.07.28.06.49.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Wed, 28 Jul 2021 06:49:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of arkamar@atlas.cz designates 2a00:da80:0:502::3 as permitted sender) client-ip=2a00:da80:0:502::3;
Received: from gmmr-2.centrum.cz (unknown [10.255.254.15])
	by gmmr3.centrum.cz (Postfix) with ESMTP id 527B718007FA5;
	Wed, 28 Jul 2021 15:49:35 +0200 (CEST)
Received: from vm2.excello.cz (vm2.excello.cz [212.24.139.173])
	by gmmr-2.centrum.cz (Postfix) with QMQP
	id 5029F77DE; Wed, 28 Jul 2021 15:49:35 +0200 (CEST)
Received: from vm2.excello.cz by vm2.excello.cz
 (VF-Scanner: Clear:RC:0(2a00:da80:1:502::8):SC:0(-20.5/5.0):CC:0:;
 processed in 0.3 s); 28 Jul 2021 13:49:35 +0000
X-VF-Scanner-ID: 20210728134935.001014.21804.vm2.excello.cz.0
X-Spam-Status: No, hits=-20.5, required=5.0
Received: from gmmr-4.centrum.cz (2a00:da80:1:502::8)
  by out1.virusfree.cz with ESMTPS (TLSv1.3, TLS_AES_256_GCM_SHA384); 28 Jul 2021 15:49:34 +0200
Received: from gm-smtp10.centrum.cz (unknown [10.255.254.32])
	by gmmr-4.centrum.cz (Postfix) with ESMTP id EC69A20056064;
	Wed, 28 Jul 2021 15:49:34 +0200 (CEST)
Received: from arkam (unknown [94.113.86.190])
	by gm-smtp10.centrum.cz (Postfix) with ESMTPA id 815C4C063A35;
	Wed, 28 Jul 2021 15:49:34 +0200 (CEST)
Date: Wed, 28 Jul 2021 15:49:33 +0200
From: Petr =?utf-8?B?VmFuxJtr?= <arkamar@atlas.cz>
To: Pavo Banicevic <pavo.banicevic@sartura.hr>
Cc: linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net,
	andrii@kernel.org, kafai@fb.com, songliubraving@fb.com, yhs@fb.com,
	john.fastabend@gmail.com, kpsingh@kernel.org, nathan@kernel.org,
	ndesaulniers@google.com, ivan.khoronzhuk@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, matt.redfearn@mips.com,
	mingo@kernel.org, dvlasenk@redhat.com, juraj.vijtiuk@sartura.hr,
	robert.marko@sartura.hr, luka.perkov@sartura.hr,
	jakov.petrina@sartura.hr
Subject: Re: [PATCH 3/3] include/uapi/linux/swab: Fix potentially missing
 __always_inline
Message-ID: <YQFgbRXKIeZ7H6mo@arkam>
References: <20210727141119.19812-1-pavo.banicevic@sartura.hr>
 <20210727141119.19812-4-pavo.banicevic@sartura.hr>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210727141119.19812-4-pavo.banicevic@sartura.hr>
X-Original-Sender: arkamar@atlas.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@atlas.cz header.s=mail header.b=eTjGvc+8;       spf=pass
 (google.com: domain of arkamar@atlas.cz designates 2a00:da80:0:502::3 as
 permitted sender) smtp.mailfrom=arkamar@atlas.cz;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=atlas.cz
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

On Tue, Jul 27, 2021 at 04:11:19PM +0200, Pavo Banicevic wrote:
> From: Matt Redfearn <matt.redfearn@mips.com>
>=20
> Commit bc27fb68aaad ("include/uapi/linux/byteorder, swab: force inlining
> of some byteswap operations") added __always_inline to swab functions
> and commit 283d75737837 ("uapi/linux/stddef.h: Provide __always_inline to
> userspace headers") added a definition of __always_inline for use in
> exported headers when the kernel's compiler.h is not available.
>=20
> However, since swab.h does not include stddef.h, if the header soup does
> not indirectly include it, the definition of __always_inline is missing,
> resulting in a compilation failure, which was observed compiling the
> perf tool using exported headers containing this commit:
>=20
> In file included from /usr/include/linux/byteorder/little_endian.h:12:0,
>                  from /usr/include/asm/byteorder.h:14,
>                  from tools/include/uapi/linux/perf_event.h:20,
>                  from perf.h:8,
>                  from builtin-bench.c:18:
> /usr/include/linux/swab.h:160:8: error: unknown type name `__always_inlin=
e'
>  static __always_inline __u16 __swab16p(const __u16 *p)
>=20
> Fix this by replacing the inclusion of linux/compiler.h with
> linux/stddef.h to ensure that we pick up that definition if required,
> without relying on it's indirect inclusion. compiler.h is then included
> indirectly, via stddef.h.
>=20
> Fixes: 283d75737837 ("uapi/linux/stddef.h: Provide __always_inline to use=
rspace headers")
>=20
> Signed-off-by: Matt Redfearn <matt.redfearn@mips.com>
> ---

I use this patch in order to fix __always_inline issue for kernels
5.12+, see https://lore.kernel.org/lkml/YPGXXt6Z3O1W0AYS@arkam/ .
I believe this is the correct solution.

Reviewed-by: Petr Van=C4=9Bk <arkamar@atlas.cz>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/YQFgbRXKIeZ7H6mo%40arkam.
