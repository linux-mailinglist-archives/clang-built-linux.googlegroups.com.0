Return-Path: <clang-built-linux+bncBDEPBSN75UNRBOFCVP2QKGQEO3RKNOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8671BF94C
	for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 15:23:06 +0200 (CEST)
Received: by mail-qv1-xf3d.google.com with SMTP id 65sf6333236qva.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 30 Apr 2020 06:23:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588252985; cv=pass;
        d=google.com; s=arc-20160816;
        b=zXyu5S/oFcVFJjWoucxQt+ltJGdk+e2BmlslIg1IGNyOhsn1/WdfnEt8WWuOx2hVfk
         vuScFVaFOHPZCyf6sbu8KotS/HdmhzlrIyrlRFw4ANTiBqam+EFwdYLZamE0ZiX0FajH
         OgWHPqqn2lU032EKQR3TBiZGtLojIMzZmdztFysicowZyrbUWWmmuxFlsqZv6alQRxZ1
         wf7LF30ZI7cUIb8wzJUI+IrZpVIeqkkI4bcsNR1XsxO6ahe9rwNJd7LQcTFeAhpgg9RE
         MUobrXH0Nn2DpgL5UhaTcwxwTu6CiJDmRyB1yNFgu3SpTXHm0VqwurR8MD8Bm4dHppFZ
         lQIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature:dkim-signature;
        bh=djL1tDFGCvjdiersW7+ISv+vQER7K/rxmm16qmllpAk=;
        b=J2f2RchM2CjuI1f0p1iOlHvXF94b4ysGUkTSuUVh+FuWCPtjw6d8lnnE1k+tMlbJj1
         C8CwtIfzilF+/3WZd//685l/1f5jIyzKEX0nM7IJK3DJr1nv1IL7rihBClnPnSbmOISf
         1jLPYjILWe7EcmNVChOq/ahsqFeKDPK8wX2EiCNX3VpJSuKg9Jd5HLdNhroz5Z/lOgJZ
         w/OWI8zmOv1TSEz7G1wsfLz9eUHgRUiONfhZ/7c6+IL82HKfYGvJhEvrof5A13Qflp+t
         PHoD6aFNFrk6Upp8QCATgop5xErBT5gAi0A1V0xTKh5ELsN9j68hJETvLTKU/JMuG28i
         6XMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B58UEQQ8;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=djL1tDFGCvjdiersW7+ISv+vQER7K/rxmm16qmllpAk=;
        b=DGqr1Dez+Hvfo/FxmrpQOnHm71rEsnbL9FuevBZRiH0sqmCR+CGLctTWAB0h/626kV
         s7/Qgpnbjcth0bN0yQHaBWpubqfcxC8kEQ92GQF896jr5K5R7QG7l1ZwjE9DZLkbjrU+
         ES4bTFiUehRQshDhlxsmeyiIlRxx+PBlIVVWycmszE7Ojqw7omHeGPuIirm1g1NfJ6Xr
         Zp0vU4tHD7eeBNgnHXViXBYR6yNbjVOhCJezo9RXZOtJTP1/DWBCIQDDG/CsBHt2HvO/
         BbTrrhQozon/R5nKgjhN17TkInd7tLR1D7YYJcqf7DaUsBPw4wonv69WAqqJ360h/Gnd
         WU+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=djL1tDFGCvjdiersW7+ISv+vQER7K/rxmm16qmllpAk=;
        b=ZuC2xUbRgLL0J5sLbCAYKs/jY4vT3jH+mL0tTNVXdxhLqdidMVs3bXDRY6PkAddTav
         1ecfWyToJZCkglWullI1ZmEiONiD6cvkXCkU3WhCjs+tKHc/2iW+XeI3zdlbZoExwc7C
         uAsc9854GgAzI0WSj6Zf/I9hT1Lu0WwlnYoLQknvzKRsvYhyczwaLz/Ur2+pj0ZpfVDC
         h+KiuuJSwvCwotCAzhM4rlQBpr+T3eEvG2+eFUIg7/dceKHBIkjb3FR3UlrwXxucumfj
         JFv3WlDiF+Oo/2pzLdghidY3+jnMbbwp64THxF4Hp4vyoTSmDCGP6lZoS0SCZxeMHyHA
         hiuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=djL1tDFGCvjdiersW7+ISv+vQER7K/rxmm16qmllpAk=;
        b=NHKiadXSeiCqeQYh5FR9u2MQ2M5Fl9GAR/40o0Lj7PbL625C1LwmKrcyjBozZzVAHA
         LDzWm/EKsJASOWMvru5mZzoFBh2Dv1buWVzIv5USAbFFZSloj3zctkQxdocnGEugAbXy
         mvbYzBbe8QSf58MaFZWsqjRHrQjlfWi6+yQUiloJ0WCwHUjodxJxWFhKNwOqh84QuDXw
         JUAxrc8W1Nfy82mmbIOvsceKpdsIzzf8YEWF3678LZxaFoHRVToOzcPxhUiiPD9RSMTN
         le6WQq77f/6/kLSOmLZpX4PCDIfG7Eo+2XsE3CJj1jnbxgBzu+MzUiGChmZqqHdL3gxm
         s39A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubcZPyW5szR9ROxlWBtEPny3KZU0s7l9NEVQo8LKSe6KPIPOgd6
	o0R3lg9+GiK3vFwSy+Svp4g=
X-Google-Smtp-Source: APiQypLI3EI1MT38cunXmBwkNGL1/h5hy1ksQNqvM2d4upzrXRHQNdAOJSpMNQUSB/8a63UAu3e3nw==
X-Received: by 2002:ac8:40c8:: with SMTP id f8mr3612867qtm.280.1588252985032;
        Thu, 30 Apr 2020 06:23:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:15d9:: with SMTP id o25ls1602060qkm.6.gmail; Thu,
 30 Apr 2020 06:23:04 -0700 (PDT)
X-Received: by 2002:a37:d8e:: with SMTP id 136mr3548805qkn.260.1588252984537;
        Thu, 30 Apr 2020 06:23:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588252984; cv=none;
        d=google.com; s=arc-20160816;
        b=OCxcUtPGoHB3BuYzwqIXN+J6H3bDCzbCIQlc+U/XZIgSJTZBWiyzVAsPzUP3NiWy3w
         xiaNB612HR2w7fRvXCT1I/Er5/UkyVE9aeMtEWIximvgmf0dZvAmr2orSWzJ0VVwQBcy
         Jx9KNSyga+/v3s0lQnDCdE6+NxYjtUAUsCY5qZp9QtnqAFL94kBeEaHfD6Noq5dvqmlS
         z9wxodPuQfmOiQcciaYiYHQudNTS/3RI93zCl1ZE7SAMq8MkILjblV7//OH0J+WM6ve/
         m6t97Tz9VAvP6C0VmTpg9aX22swV0a+LD0/MU0C24B3nQpWEHdG0nFK0t5bclhkz72c0
         70lA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:dkim-signature;
        bh=adQodhe8IpLisINRvWr4Jh5dPMBs2vc5JvfCsLBz4ng=;
        b=gh0HA57EL167WQNKZoALqbJVvcfjqHAYJtNSoWXb1kS4EYdPRdKPM8ks/mNGym5k1D
         S2wPE7FF7lJypzkD8APk+AMLlvw1HEZW/rJbJY5XJI8JdHqJNOTmEMnTuHjJBkv4ou4b
         3D48C7WPCb829pOI2fwky0TFFDrCZBnCSutucaKJ5BguWAG1uVgzRLndDNS8RLs1/tO0
         OYBNuTl6JhCK8Av2590G44rCr/Q7qS8Jd0/WaJQlYjxS4vS+Z4D2rwHg+gus0823a76o
         rD8QtbdCR3vLkGucC5dGi1JBNWmLCvyLxAJuzqU569FTiz3I+8WbWJHVt8QNrfWwKD8S
         Octw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=B58UEQQ8;
       spf=pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id j11si106426qkl.6.2020.04.30.06.23.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Apr 2020 06:23:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id w29so4890819qtv.3
        for <clang-built-linux@googlegroups.com>; Thu, 30 Apr 2020 06:23:04 -0700 (PDT)
X-Received: by 2002:aed:2943:: with SMTP id s61mr3674041qtd.299.1588252984165;
        Thu, 30 Apr 2020 06:23:04 -0700 (PDT)
Received: from quaco.ghostprotocols.net ([179.97.37.151])
        by smtp.gmail.com with ESMTPSA id s14sm2148497qts.70.2020.04.30.06.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Apr 2020 06:23:03 -0700 (PDT)
From: Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
	id 0D08D409A3; Thu, 30 Apr 2020 10:23:01 -0300 (-03)
Date: Thu, 30 Apr 2020 10:23:00 -0300
To: Jiri Olsa <jolsa@redhat.com>
Cc: Ian Rogers <irogers@google.com>, Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Namhyung Kim <namhyung@kernel.org>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Stephane Eranian <eranian@google.com>
Subject: Re: [PATCH v2] perf mem2node: avoid double free related to realloc
Message-ID: <20200430132300.GI30487@kernel.org>
References: <20200320182347.87675-1-irogers@google.com>
 <20200430081541.GA1681583@krava>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200430081541.GA1681583@krava>
X-Url: http://acmel.wordpress.com
X-Original-Sender: arnaldo.melo@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=B58UEQQ8;       spf=pass
 (google.com: domain of arnaldo.melo@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=arnaldo.melo@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Em Thu, Apr 30, 2020 at 10:15:41AM +0200, Jiri Olsa escreveu:
> On Fri, Mar 20, 2020 at 11:23:47AM -0700, Ian Rogers wrote:
> > Realloc of size zero is a free not an error, avoid this causing a double
> > free. Caught by clang's address sanitizer:

> > ==2634==ERROR: AddressSanitizer: attempting double-free on 0x6020000015f0 in thread T0:
> >     #0 0x5649659297fd in free llvm/llvm-project/compiler-rt/lib/asan/asan_malloc_linux.cpp:123:3

> > v2: add a WARN_ON_ONCE when the free condition arises.

> > Signed-off-by: Ian Rogers <irogers@google.com>

> I overlooked v2 for this, sry

> Acked-by: Jiri Olsa <jolsa@redhat.com>

Thanks, applied,

- Arnaldo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200430132300.GI30487%40kernel.org.
