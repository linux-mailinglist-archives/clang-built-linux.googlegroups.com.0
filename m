Return-Path: <clang-built-linux+bncBCZ77L636IHRBX5JWLVAKGQECZ7D7OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x737.google.com (mail-qk1-x737.google.com [IPv6:2607:f8b0:4864:20::737])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7AB86C75
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Aug 2019 23:32:16 +0200 (CEST)
Received: by mail-qk1-x737.google.com with SMTP id t124sf83972527qkh.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Aug 2019 14:32:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565299935; cv=pass;
        d=google.com; s=arc-20160816;
        b=u3FS8r0R2/qQLvoiMQC+FsMIDqgilQBbPTXe4YwIbXsmq3Lx+Af0t5vlTtV7my4LCi
         W4kMK/BJYkBeEw9/vu7CnayECNV0t6e/fhLd2s+lEM4FZeK/vquuCovuIp2LA36ip2kD
         3esa+AsGaaiCjHumUTdWi460KOEBjBukN58XgmcxUu3rA1/klHg8TGupwcsTsZg2dyAR
         8CsD0CpMoOp2Cd0VcW6Uerc/4VFvVlnl5DeoTTqBsLLxpdTajzwIEICMojAFxSaKBccP
         I4xPdB0zS97Qu1ihr8JSHMpyjNEt0ZW4RpCp66Rl1BrEh8dLZ9k10bbzzNqucz4wE/bp
         Vg4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Eh0rmLrQEGYBvv3ckzM0452n4jbZ4OOyiSERIKfh8Ec=;
        b=NwXY51iJb7PokNf1n3/PRaUMQilgSb+Vd38i/1EhBJQ/OsLxFNeo8RlALsMmFS4bUx
         35uAa5U9DaCjrP8nWlddjCDlakspNYF3SUdcg1Ipk7OfDZ638TD95P3C15YemApxwL4J
         b4b6IIgZqnZdXQNo6U/60P+ZulDcUtwTRcL/ns3xzeyyfhXdDq+Mhcvr+nvfmiTAwNwX
         jDuVXcB0ZKeqrT7JGiUh9H+Jcxh3wnRUFoz7kSnfkH+U++4LwsJci3xv8rtMhti2T0xU
         qfhUNak+HnU5kK3xzs6P6JTsZImpEDsF2n1Ji1NELZUfLuv7Nve4zfFI/f7lQvPo5u63
         uJvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VBAjjHCd;
       spf=pass (google.com: domain of guillaume.tucker@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=guillaume.tucker@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eh0rmLrQEGYBvv3ckzM0452n4jbZ4OOyiSERIKfh8Ec=;
        b=mYq76zmaxt2AAUUtQUdzue1W8dSuenxdKvvZuBolMmv8/94RRDZxoMJpEtbRjUV+hK
         7QrDi/CGz2h8vG8dgou0SvPQ5N804QMWNlW41XiA2xxJxG5wSqFk9yyO6cl7SvBmxO0U
         6T9VpYyRNm63At82XI/iTWZPbcDNFmsbJpGkvVLXLsMQwSCzaVlRQeCAlMkGzxdW6fmH
         ouHeylwKS+R+S51/qLFFAOv32FTL9KxP0mGpjIDmCksmublgDfoPuKllbR+qhv+qahpc
         et0jsS5/DE5c0aINfeJrio2MVunbOQisp4l+wloysFg8j7aqpR0VuwO0vuySYHO3mXAg
         7Qxg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eh0rmLrQEGYBvv3ckzM0452n4jbZ4OOyiSERIKfh8Ec=;
        b=YJmrUqHkyc+nL2/5Bn04ZxlWO095M/yn6VySGBFHCRk1ly/XE5foir2nerDQ87MX5H
         FdRwxUwUQwCfKBiccOEhG2uXNEoCVLRwfKDn37eMyM6+j/iSzL6VX/wH8zSenrChAqWK
         Jx4lFtYUqGMNsEUszs5injfUO/U5SXZe64Z/KSU8fmu3ujU8Q8oQ/6FvuoJrcJLpEr3t
         XTebhCsVFNNWsdBFHm0hgwVtC/+m97spp6pF4nezfS1UDz9PnDmlVKmeOTf5SLwRZcUO
         HhO0AUP8XcaknJlY+ZkvVB9EpL2LIQE8xTQKhzSHLM+Z27pyoPbfqNkUprtnmf1OGXkX
         wzxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Eh0rmLrQEGYBvv3ckzM0452n4jbZ4OOyiSERIKfh8Ec=;
        b=L3Mryl3ubupTz5QdDAukF/kzwaZudZ5ACYZiE31gs6+vhkKS7vDnKLuDVjZUynCO4R
         qD1YcCkuDlEweitFB62nioRcMT8AI2VM27J4XVlFBdUdevtlPxg/wzgWio6o/JFxl5mC
         6mrvfk4pLfuMFBO/wU6DVrx1B7vn15Gvbp5Jrp5GID15R8vZY/4ksu5kxyf9giANW8GD
         oxjvok0zcbpn6VKk+dGH9Y5u5/Nfi4ktGciFCatwx54PIlRb8ol58YYcF6aLR7svdenP
         Mk1egPnLwCFIRjOfjWAJyu86oNt6NxqyMecq96OKdMEdy2dOY+eWeFDXyLXOX9xSmkry
         3uBQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX0xFrwTxpsCCuCiSDOhWh8HvO3/DeNSz24/QbXfWyPV+lAmb7s
	6RlALE8AndydznwXSPF+w9w=
X-Google-Smtp-Source: APXvYqwUzmtSbpyPqOoUIEHuSN47GkRBDmogV5jrQdOKzRQ6lcJIeziSnLqf3R8XifBEalRitP2XmQ==
X-Received: by 2002:a05:620a:6cf:: with SMTP id 15mr14575557qky.98.1565299935790;
        Thu, 08 Aug 2019 14:32:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:4f85:: with SMTP id d127ls2814118qkb.4.gmail; Thu, 08
 Aug 2019 14:32:15 -0700 (PDT)
X-Received: by 2002:a05:620a:1f4:: with SMTP id x20mr15644759qkn.415.1565299935595;
        Thu, 08 Aug 2019 14:32:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565299935; cv=none;
        d=google.com; s=arc-20160816;
        b=aZAQC+mzyUaRg+7uHhzHidGFaOuxfmb0k55wR9MVQSYc6+AOjRGX8QUaI45AxQM+GA
         H9CdZOkkXgv1/g8AbRZ3KDxD5bbcPpmpOBRjxVC2A33XdejVpQq9KGaw3JYHP1f8Ko/M
         w9cH27XKKdxpwvMJdaxU1+bxVnCcdGBydvrBb7cd0+FYNmZyG3ahHlpaz2JK3iuojsT9
         qEzxICwd+bpWlsVO/9ZwtZbdbKuw+uWy5Tu3wvvqG2G3PqVEl1EJcquaDw6O04FRvIoJ
         mouVbPzsBmP+kjNst8VzW+EseVXCuyFqaAQLg2Hmlri5u2d/kpEVMHNthxTKII7Vz6X5
         GGfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eAJs6Qg5aayyZt1n0nR5cgMygMBJzkLI2jc/XsMIPbc=;
        b=nwpJnT4AksIQX5+V5PVBYrmHPUPU/s6Co0jFq0OO6N4b0oWzu2yg5cMDVIEcX/8N6B
         Es22NfgCgCbzfUAHZM1vKumK/Hp2XjeD5/HjLXAoMLzdCsym9kWW4UtOh5WHOWVs3Xl3
         p9gzPw0sGdKrSNZiC4msvsSaBlIZ+6C9LXX/zYA735GlCFSZrcC1tk6k23oWS5DN6KBZ
         EKzDZL8us0wR9+7B0y/rJdrMVVeDOkpL7fHXJHhl8vqo5TV71WS02X9h6F0cJa+MThmV
         +1bYw6mc2ocpSaQQynVhX+IzLK7/3qp0iLattlQ5Jfd84xar9WZWLwJYy8AMO/K15YI6
         o99A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VBAjjHCd;
       spf=pass (google.com: domain of guillaume.tucker@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=guillaume.tucker@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id 37si119994qtv.2.2019.08.08.14.32.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Aug 2019 14:32:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Received: by mail-qk1-x742.google.com with SMTP id z16so269061qka.1
        for <clang-built-linux@googlegroups.com>; Thu, 08 Aug 2019 14:32:15 -0700 (PDT)
X-Received: by 2002:a37:8081:: with SMTP id b123mr15632984qkd.62.1565299935372;
 Thu, 08 Aug 2019 14:32:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdn0kv+N5raBDE_aPv637ROHmu7C1_C9F3PXNnAYSMTOYQ@mail.gmail.com>
 <20190806190254.GH4527@sirena.org.uk> <CABXOdTckrMfM_-5+pJ37KHveLE8oRDvFAzPftnp_5--fYJVuXQ@mail.gmail.com>
 <20190806200809.GI4527@sirena.org.uk> <CABXOdTcWG-wh9ZHMVmON+B4cxV64-8HDkTvpG61eTNAOYbs-jw@mail.gmail.com>
 <20190807123854.GB4048@sirena.co.uk>
In-Reply-To: <20190807123854.GB4048@sirena.co.uk>
From: Guillaume Tucker <guillaume.tucker@gmail.com>
Date: Thu, 8 Aug 2019 23:31:51 +0200
Message-ID: <CAH1_8nDY-WOySK94u7WrDdgndfyca-XhLgtbG=VmL54V6pqfow@mail.gmail.com>
Subject: Re: aarch64 Big Endian
To: kernelci@groups.io, broonie@kernel.org
Cc: Guenter Roeck <groeck@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="0000000000009d6b6b058fa1cae4"
X-Original-Sender: guillaume.tucker@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=VBAjjHCd;       spf=pass
 (google.com: domain of guillaume.tucker@gmail.com designates
 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=guillaume.tucker@gmail.com;
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

--0000000000009d6b6b058fa1cae4
Content-Type: text/plain; charset="UTF-8"

On Wed, Aug 7, 2019 at 2:38 PM Mark Brown <broonie@kernel.org> wrote:

> On Tue, Aug 06, 2019 at 01:45:44PM -0700, Guenter Roeck wrote:
>
> > FWIW, I generated a big endian aarch64 root file system with buildroot
> > and gave it a try with gcc 8.3.0. Works fine for me, at least with "-M
> > virt" in qemu. I have not yet tried any other machines.
>
> Yeah, the GCC big endian boots have been working fine.  It's just clang
> builds.
>

It turns out that there are several issues: one in the kernelci
build scripts, one in merge_config.sh and also one allegedly in
the kernel top-level Makefile.  I've described all this in detail
here:


https://github.com/kernelci/kernelci-core/issues/136#issuecomment-519691794

I've run some builds with these fixes on staging and it does
work, here's a "good" kernel defconfig created as a result using
my kernel branch with a patch in the Makefile:


https://staging-storage.kernelci.org/gtucker/kernelci-local/kernelci-local-snapshot-048-1-gb60ff4593140/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/kernel.config

As you can see, it has CONFIG_CPU_BIG_ENDIAN=y as one would
expect.  I haven't found any big endian boot results though, I
guess all the relevant platforms were probably offline or not
available for staging runs but only in production.

Guillaume

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAH1_8nDY-WOySK94u7WrDdgndfyca-XhLgtbG%3DVmL54V6pqfow%40mail.gmail.com.

--0000000000009d6b6b058fa1cae4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 7, 2019 at 2:38 PM Mark Brown=
 &lt;<a href=3D"mailto:broonie@kernel.org">broonie@kernel.org</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Tue, Aug 06=
, 2019 at 01:45:44PM -0700, Guenter Roeck wrote:<br>
<br>
&gt; FWIW, I generated a big endian aarch64 root file system with buildroot=
<br>
&gt; and gave it a try with gcc 8.3.0. Works fine for me, at least with &qu=
ot;-M<br>
&gt; virt&quot; in qemu. I have not yet tried any other machines.<br>
<br>
Yeah, the GCC big endian boots have been working fine.=C2=A0 It&#39;s just =
clang<br>
builds.<br></blockquote><div><br></div>It turns out that there are several =
issues: one in the kernelci<br>build scripts, one in merge_config.sh and al=
so one allegedly in<br>the kernel top-level Makefile.=C2=A0 I&#39;ve descri=
bed all this in detail<br>here:<br><br>=C2=A0 <a href=3D"https://github.com=
/kernelci/kernelci-core/issues/136#issuecomment-519691794">https://github.c=
om/kernelci/kernelci-core/issues/136#issuecomment-519691794</a><br><br>I&#3=
9;ve run some builds with these fixes on staging and it does<br>work, here&=
#39;s a &quot;good&quot; kernel defconfig created as a result using<br>my k=
ernel branch with a patch in the Makefile:<br><br>=C2=A0 <a href=3D"https:/=
/staging-storage.kernelci.org/gtucker/kernelci-local/kernelci-local-snapsho=
t-048-1-gb60ff4593140/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=3Dy/clang-8/ker=
nel.config">https://staging-storage.kernelci.org/gtucker/kernelci-local/ker=
nelci-local-snapshot-048-1-gb60ff4593140/arm64/defconfig+CONFIG_CPU_BIG_END=
IAN=3Dy/clang-8/kernel.config</a><br><br>As you can see, it has CONFIG_CPU_=
BIG_ENDIAN=3Dy as one would<br>expect.=C2=A0 I haven&#39;t found any big en=
dian boot results though, I<br>guess all the relevant platforms were probab=
ly offline or not<br><div>available for staging runs but only in production=
.</div><div><br></div><div>Guillaume</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAH1_8nDY-WOySK94u7WrDdgndfyca-XhLgtbG%3DVmL54=
V6pqfow%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://gr=
oups.google.com/d/msgid/clang-built-linux/CAH1_8nDY-WOySK94u7WrDdgndfyca-Xh=
LgtbG%3DVmL54V6pqfow%40mail.gmail.com</a>.<br />

--0000000000009d6b6b058fa1cae4--
