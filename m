Return-Path: <clang-built-linux+bncBCUO3AHUWUIRB4VEW3ZAKGQEIP3EEHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3440E164F49
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 20:54:28 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 6sf896806pfv.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 11:54:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582142067; cv=pass;
        d=google.com; s=arc-20160816;
        b=MqicurhCBdQ9T97y1nuO9u8Oy2bCQ3Kv8mllnZ0Pv7T0WXMSC1AkyxHSJTB5A38ySI
         iJ9yIB2My4kP7E6mFhjBhkwY3U3tCJ3+ifS8p0UEOmgT6tKkDFjG0dJEFi/9wAWBnbnE
         BbPyGZzbKQFp7R4w7AsZvfa1P8nht6bZRyyWD06LqDEzXFJlyvIaK4PhUcGBzKzSbd7D
         Thj/86L+ov4+O0CSVihoibx54D8vFCXM4AoDhufkz3DZ821RCWddH2zVA/HhVXAfw5go
         b/7Mt2t807S+UWOoPDrRCugrDA6xXwVPjMVJm2qwE7TG47v/tJBSBjBKsx3szfkPg9W4
         uoaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9dPKlF/9j6Y7Uxtm5yAml+TRjYkpYfQE/rsOQplGTAY=;
        b=YB2rf9OxgH/qCstyK/mMGblqngcBqlpyjSSlkrd2S84DqtknIS7wPH23EaV7+SA8Kc
         d+gWPMAGF6ROwynMTvP+f5qRxyclQNw+IsD6SexpmylhuPkJlne0ShX1V4x/JWcv8Poh
         luyomqMwR1HG8wIgsQrLJe2OSkqMIg5jNSSYfBBkDYLZa9TJdOBy2CmuB1gYlsGRSy86
         AkjcymgCeUpM2gFiWYiFns0GAhVXcJYzIDA1l8F9ly0Mz58DYv6e3V7L29U7A1gUU7i+
         GG8I3teLyx/vFQEs0LQEBYrKyPUuQJYktMIVpk6+oFCCn9yeLk/cTKVySsmD+yU9hHZI
         u4fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=ODVc7IEJ;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9dPKlF/9j6Y7Uxtm5yAml+TRjYkpYfQE/rsOQplGTAY=;
        b=OzMG4Q4VTDnMdgf7rUVkvK+raSvMDUYbrNfMB3wrbdf8gqE2wuL5syRQ8XWjcnlAPt
         tYfKuev2a1HM12Pn7E0rcc7F6yToyzedROvsLJfWY7cuir0pfjWNOTjMUTitYBYOH5ut
         ZTSYRnNoFWE4jnvb6rXCiWBX4RZF0cvdQSxR/9VEcwarwUu0HMODF3NJ9jEyYqL1Wjt7
         CwIkcZ+ThZbHBnIBJYcNQOCsKNBY0Wt6w+PP+2w1lEgkxSF1cS3AvSr7XJqR4cCaiFs9
         USgqoN1FJt8ZK49rrZTF9t60zwSBRYki4zjfGUSWC2ss0gIXlVFWp9E+hoS0oRfC0sYK
         g8yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9dPKlF/9j6Y7Uxtm5yAml+TRjYkpYfQE/rsOQplGTAY=;
        b=p4Xlnu3E2F3YDh4M2FlzTkknqtXcIk1F3cOI9a4t9z/m9Df2UBpbcKMzd+dc1e00oD
         MqTxs1EbaznIoY7NJj3+7yxib+z4JmZRxNVBk6on8ByJMjqjFTd/pi22zf/gf+8U+edg
         wgw42FaeoA649ZPjAtbx27MnY3Gi/uI9VT+AbNiBsJzweBp6AjiFXIqNgtYCT062kM0R
         WYHL1X45pZtsPXpLtZqQlkjkThRJ48Q452lU5MvLRdmW1ncBVKPaShGKZefekIapnyM5
         zaHERHCavRN6lx18K098svViAR2jlUY+U7iZKiE36v84DP2KkWGYAjoHdy+vQAX4z4wg
         qxSQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVv4IM11GnVBgFMSnGwdSBICdqaQY4XMJQKJLMLdUpkZDTP3Vsp
	3XxS+1ecSyLoI4swD9U7ozc=
X-Google-Smtp-Source: APXvYqyYxXt31hfAtBmh7d4Z41SEiTMDMcvFZvzrg/ra9fCX8xF20+BVRDNnkVQXhxbK6OdwSA9LKw==
X-Received: by 2002:a62:a515:: with SMTP id v21mr28887950pfm.128.1582142066908;
        Wed, 19 Feb 2020 11:54:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2a1:: with SMTP id q1ls7653390pfs.9.gmail; Wed, 19
 Feb 2020 11:54:26 -0800 (PST)
X-Received: by 2002:aa7:95a9:: with SMTP id a9mr27876691pfk.15.1582142066477;
        Wed, 19 Feb 2020 11:54:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582142066; cv=none;
        d=google.com; s=arc-20160816;
        b=lTi+cW8WdIvqkVoAGu8CPl6bjyd+aXfmI3nS3KNovD33VVsCAbJtRjT+SsCmNuGxUA
         Xn6oFVuCLmjXHnebqcGyGxG89m92qGAvItr8vNKI7Re4q3OWaP5PQ/d1rA2Q84z6Oru2
         QFuenQ1sVE46Kan3lE7HKOmhHuwwSycdQZrjcWjwM+9kpsrlgPFo4r1vthjfC7ILOiGT
         twyIarcHkVLKBZFUIAHBZEo7dWvWno7mFfM2uazGNwVxuCUI00WYm9L1DCmMwBzwP0MY
         G4t2nUkfNm52XSOSnE8bXAhJ2EIx9N29F5eTPTUp0k5G/u5KSlcLzIL6ikGHKzGavXkC
         mhHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GZ9YXuE15eVQ1m82XL11R20aCz4heFp3V/a8Xs8KTDk=;
        b=bd+69WAVXKPrgzKh3u37Sy62jmGo+jgTT1rGUBlyyemDvNqEEvJfoZeckygTPF6kKc
         lukQ8OPenN6mj1j/iykQCJ8w2VVEFLeBG4UkWClUGwM2+NsOHSWW/QYKO3dOaX3N/DqU
         iqMpt/iHMZ/Geoe8c5huvoUov7GbSqBCWep+Kgv0TLjPgOLnYRsnQo5DtjBpfaoWiaT9
         fja3O0Ektz7G6ONBGY88QPAHpLrpazIfnfYTfgF3TPmBaUypYgtE5X7HXoqWhLGes6YP
         CE8pYHKuGCFm5YSGxe9d8BmkxV5xYg9aOoikFln8yzRv3Fn83piWzBjWMOn+O1GJZDsc
         IJpA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=ODVc7IEJ;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id f31si306190pje.2.2020.02.19.11.54.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2020 11:54:26 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id i14so1118549qtv.13
        for <clang-built-linux@googlegroups.com>; Wed, 19 Feb 2020 11:54:26 -0800 (PST)
X-Received: by 2002:aed:3fb7:: with SMTP id s52mr22354651qth.97.1582142065790;
        Wed, 19 Feb 2020 11:54:25 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.68.57.212])
        by smtp.gmail.com with ESMTPSA id p8sm490083qtn.71.2020.02.19.11.54.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 19 Feb 2020 11:54:25 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
	(envelope-from <jgg@ziepe.ca>)
	id 1j4VQO-0006DL-Tx; Wed, 19 Feb 2020 15:54:24 -0400
Date: Wed, 19 Feb 2020 15:54:24 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Arnd Bergmann <arnd@arndb.de>, Ingo Molnar <mingo@redhat.com>,
	Jason Baron <jbaron@akamai.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux Memory Management List <linux-mm@kvack.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH 3/6] tracing: Wrap section comparison in
 tracer_alloc_buffers with COMPARE_SECTIONS
Message-ID: <20200219195424.GW31668@ziepe.ca>
References: <20200219045423.54190-1-natechancellor@gmail.com>
 <20200219045423.54190-4-natechancellor@gmail.com>
 <20200219093445.386f1c09@gandalf.local.home>
 <CAKwvOdm-N1iX0SMxGDV5Vf=qS5uHPdH3S-TRs-065BuSOdKt1w@mail.gmail.com>
 <20200219181619.GV31668@ziepe.ca>
 <CAKwvOd=8vb5eOjiLg96zr25Xsq_Xge_Ym7RsNqKK8g+ZR9KWzA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=8vb5eOjiLg96zr25Xsq_Xge_Ym7RsNqKK8g+ZR9KWzA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=ODVc7IEJ;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::844 as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Wed, Feb 19, 2020 at 11:11:19AM -0800, Nick Desaulniers wrote:
> > Godbolt says clang is happy if it is written as:
> >
> >   if (&__stop___trace_bprintk_fmt[0] != &__start___trace_bprintk_fmt[0])
> >
> > Which is probably the best compromise. The type here is const char
> > *[], so it would be a shame to see it go.
> 
> If the "address" is never dereferenced, but only used for arithmetic
> (in a way that the the pointed to type is irrelevant), does the
> pointed to type matter? 

The type is used here:

        if (*pos < start_index)
                return __start___trace_bprintk_fmt + *pos;

The return expression should be a const char **

Presumably the caller of find_next derferences it.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219195424.GW31668%40ziepe.ca.
