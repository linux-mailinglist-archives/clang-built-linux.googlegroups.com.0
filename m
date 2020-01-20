Return-Path: <clang-built-linux+bncBCGYFYHOWEFRBTETS3YQKGQE4STZCTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCA21428CE
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 12:06:54 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id 2sf293825pgd.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Jan 2020 03:06:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579518413; cv=pass;
        d=google.com; s=arc-20160816;
        b=R7l1eszRoCV/P3nO9GX24jzorEu1Mv1QkcUn3/laAQC3mb6NIPIxQA8w2o4PNHtibF
         Yp8RSQ0lPyD35pKiiYYdnMNHRlL7tpvB593uGIqkv5u8Y9/oEyE82KRSG4FFvKx/E+1A
         evaYwRK+bNuqbe+Af5eLKy4pSPovXk1n7V1+gbO3Y2xOf60y+KLoJhED34/olhY6Objj
         iKXRYXMx82bTJrCnjfJ39Ncj8zAVwGUFBbquqW9dxCHenkaCoW0vMBQpvJMTX5V4BRSC
         You9ddbpojz3YzpkJWoIYpihWKom8HXO4jnbrPDWDB7Dy+P3SfliTsDlviForZ9QoFvp
         ZmYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=JttafL4jHPuVgjnY0qylu6jx33kr2RyBw6WlYMSRab4=;
        b=QVrwdr0mS9HgABsWxqxSvVK6ldl1EsBALKTycLdxNqR/iUc7yGkXh158DHYtGT5IGD
         qjLVR84h77BxxsptQ8BH3ShHwhvj3Xu90SRa3gg98ExcGbIsmkmURosPeBkU4Jjj6OKO
         GKRuC3Ux22xvzGZIFerTaMKEFB69MvNgIJmd5JGYCzb/p5GZQPZru98JIhAmaLJxJPiU
         o2XyVsKMT4Tq7HQnQdBVOZ08n9u8rLjC9zfh7Ihr9+J3vmbTlVN8oqmZDfiFKcORgHXp
         4xIjIosjThJLxQ52mG+dg6DQpucriV618F4kyrix1xpN/6Kne9iPHT/+qZKCL1pFM+9G
         /Kxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PFENDFz2;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JttafL4jHPuVgjnY0qylu6jx33kr2RyBw6WlYMSRab4=;
        b=D6UvO8G3hydA4fXxsKibQHLBFnXfCKwNINxBguq+uF25mqrNSzGh2544sXaav6ex5y
         QvLL67IAhwsp5NRL+CpjnmJeHXIzqrit32EmpcwoxVDfPZwQ2I2WrvyFj/Phybc+pHlj
         HKfNLxXakXlThKf+Rd8r1xt6OtDkZYRY1Y80atOeq2J9wECKXIAaPjx6ld6hU9dhJSrQ
         YyYrW091a0L88ySXUTvM79y9/EvitGt9ENXdMwqV9VKztW2S9slCsPySUgwKcOZxM8i/
         s7HogN0a4op2oW1Kq75U/StTSlJIjxvFiTGamBQ2gF3SNGAre6j2aNJxA03WiXwG73JC
         5crw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JttafL4jHPuVgjnY0qylu6jx33kr2RyBw6WlYMSRab4=;
        b=CE0QcHs58Xnrith9OhzlAEEErua2LmfUP5njAuZVV5VYh3w9042El805dJda3Tm8Lk
         XWySouw6yYNyEEC7rqA61CyO5t7yLGsFaHgBQ4uxzHBUy8NzPayM5Bsu20nhaqUVDRmB
         G4zSgisV7LkVWynmB9OwQVPVFcQjW9oe+t9fePC7C7mR/ojc8QhpIR3Bxb7FHvukl20d
         Xwsun6lqTrhDkpG2FKz2t/UUB5iPJvpaTG/u9xJnNz+wJ50TctzWgISbnlB7j7hq1BLm
         UVtymDNs7IyoOP2ZAPeioJBOvVr14x2R2xT/ZBuIUpJU1MJHrNyGBMqN+zaFhQhqNalh
         TSXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWjZypUFx+DrrBXLRYhpsydw+iCbAGQnEVK+Regy8yjZFGv060x
	RHzPQCr2ghNy0uDrrk7ioNI=
X-Google-Smtp-Source: APXvYqyVHa0t1a9CJjED4vjWGENxcIxlP/Z8kSsTXvzQz0KJCHdhhK6lazQoxGMvZPLAlLGB8xJgMw==
X-Received: by 2002:a63:1d1d:: with SMTP id d29mr56888223pgd.387.1579518413014;
        Mon, 20 Jan 2020 03:06:53 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:668f:: with SMTP id b15ls9733381pgw.13.gmail; Mon, 20
 Jan 2020 03:06:52 -0800 (PST)
X-Received: by 2002:a65:4106:: with SMTP id w6mr60294358pgp.347.1579518412506;
        Mon, 20 Jan 2020 03:06:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579518412; cv=none;
        d=google.com; s=arc-20160816;
        b=v3yHZkCB7icaMF/Fh6itsbqJa64nU0QPfDYny50dcrUUur4SeVhORoAR9njKLnXCI3
         PJUlenGJ3UYviY2tLS8FGVJv1khlriMTuCXVBjECcws5x3Aedy4tWYaxvFpbIls4Ghjf
         lB1wHSbq8Ivr/d90sWoEl6/H/PAQjsJxv5JrYicevBBAZfCW3Xn1Mn2CjXL0jAYLA2Rn
         Ek4AjvUCj4PRFw+J9ysF8Aoup8uTuPjfCbQGwNMmQztQp6BfIM5uj8wbaYhuCilCyc/L
         JxWxXUFyEZMhlz6FQ0vpzfhXZMAlTfBVUR/wfSISD208F8F9B58+jycjwi9PfD9jzqdO
         Yf7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:dkim-signature;
        bh=4LUtM9Q90ySWHX8O+3mAipgwNklL9xdgfFnEfGjTNLo=;
        b=FheeZ8OlhLEDUznTAEHl7TQHjc24PoqAxxnRjX6hEMHaUyFKgJS6Vzxq1YmLLVJhtc
         vsQoJk+4Pyny0vMYo5HC0HXjpiDTgih+5t0WrGuJdtXmdyKU6+y4g7b1GWOCXYaHS9G7
         bTsNiFIx4IPJ+ImMsHHneYM2VwGIx2thutj6KxbvVFwHXHiunJGUQ7p9h9g+Sji4Bt6j
         JeBHjy0S6Y6H3IpNBfZXd9V5dfWhU5X4iho3kg3KMww8N8Es0+vpzqFNdYurPF+mq+dg
         CIgV5BM+DEUe8dPGQ2bVaoVg3xnyB+v4skmUyPjgjLHDjTZyShrePAYbZsugWqrL/ine
         BXvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PFENDFz2;
       spf=pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id r18si1596538pfc.2.2020.01.20.03.06.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Jan 2020 03:06:52 -0800 (PST)
Received-SPF: pass (google.com: domain of toke@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-52-sj8kgeRvP4WbJo2G_Ewx5A-1; Mon, 20 Jan 2020 06:06:48 -0500
Received: by mail-lf1-f69.google.com with SMTP id t8so6165446lfc.21
        for <clang-built-linux@googlegroups.com>; Mon, 20 Jan 2020 03:06:48 -0800 (PST)
X-Received: by 2002:a2e:8e22:: with SMTP id r2mr12213812ljk.51.1579518406712;
        Mon, 20 Jan 2020 03:06:46 -0800 (PST)
X-Received: by 2002:a2e:8e22:: with SMTP id r2mr12213786ljk.51.1579518406456;
        Mon, 20 Jan 2020 03:06:46 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([85.204.121.218])
        by smtp.gmail.com with ESMTPSA id p136sm16758946lfa.8.2020.01.20.03.06.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2020 03:06:45 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id C1D8A1804D6; Mon, 20 Jan 2020 12:06:44 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andriin@fb.com>, Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, Jesper Dangaard Brouer <brouer@redhat.com>, John Fastabend <john.fastabend@gmail.com>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>, Shuah Khan <shuah@kernel.org>, Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, linux-rdma@vger.kernel.org, "open list\:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, clang-built-linux@googlegroups.com
Subject: Re: [PATCH bpf-next v4 09/10] selftests: Remove tools/lib/bpf from include path
In-Reply-To: <CAEf4Bzb9zUmhxTyYahJqySJzgfyB-zMEd+o4ybv=a8-t+iZS4w@mail.gmail.com>
References: <157926819690.1555735.10756593211671752826.stgit@toke.dk> <157926820677.1555735.5437255599683298212.stgit@toke.dk> <CAEf4Bzb9zUmhxTyYahJqySJzgfyB-zMEd+o4ybv=a8-t+iZS4w@mail.gmail.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Mon, 20 Jan 2020 12:06:44 +0100
Message-ID: <878sm2pet7.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: sj8kgeRvP4WbJo2G_Ewx5A-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: toke@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PFENDFz2;
       spf=pass (google.com: domain of toke@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=toke@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

[...]
> I really-really didn't like this alternating dependency on directory
> or a set of file, depending on current state of those temporary
> directories. Then also this ugly check to avoid circular dependency.
> All that seemed wrong. So I played a bit with how to achieve the same
> differently, and here's what I came up with, which I like a bit
> better. What do you think?
>
> $(BPFOBJ): $(wildcard $(BPFDIR)/*.c $(BPFDIR)/*.h $(BPFDIR)/Makefile)          \
>            ../../../include/uapi/linux/bpf.h                                   \
>            | $(INCLUDE_DIR) $(BUILD_DIR)/libbpf
>         $(Q)$(MAKE) $(submake_extras) -C $(BPFDIR) OUTPUT=$(BUILD_DIR)/libbpf/ \
>                     DESTDIR=$(SCRATCH_DIR) prefix= all install_headers
>
> So, essentially, just make sure that we install local copies of
> headers whenever libbpf.a needs to be re-built.
> ../../../include/uapi/linux/bpf.h ensures we don't miss uapi header
> changes as well. Now anything that uses libbpf headers will need to
> depend on $(BPFOBJ) and will automatically get up-to-date local copies
> of headers.
>
> This seems much simpler. Please give it a try, thanks!

Yes, this is a good idea! It did actually occur to me that the $(BPFOBJ)
rule could just include the install_headers make arg, but only after I
sent out this latest version. Thank you for taking the time to work out
the details, I'll fold this in :)

-Toke

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/878sm2pet7.fsf%40toke.dk.
