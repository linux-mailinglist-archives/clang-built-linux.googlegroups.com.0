Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB7WPSPVQKGQEBDL5YIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BC59E240
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 10:21:19 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id j17sf21983ybm.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 01:21:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566894078; cv=pass;
        d=google.com; s=arc-20160816;
        b=EHnk565UylHiCfkWUA5EuoDyea0YWFf88RdjyuoJTcg52WZmjnZpFEQwNqVrqbnFC0
         BNpwXde1u3KQIhw6lsbIHztuX5Q8Sdugl6pWP08Ryu/pfq8Cyev3TqEeEdpNbtXyV2e1
         SJGpTlgnAEh1EJP4W5kP/p/w0rrNM6TJq42KxYAM4009hdeie/MK1LzsIoP8DSNav/z9
         tX6TCLjoAFMnfA6FfEaL4SJbh/+C7fyk6leGpfjm2r+VPd1e8gArFCDxV0scbyFkG/57
         GUkfm2zs7x83rxRyVK1C/IgkBThSO1h4hXZdHTD1+nvP9yiqqJmzkdcw5RtPYb8hSnUX
         IFcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mqdJ9pWfbPjiCdB2egrXI6J5cmqWsMdtPlXBhbZTKns=;
        b=zFUq0x3vEiSTDd1r4LY8D9oH6XRCUX+r2rUFBahjkGPM0asd19/htmtwsg5L6HxRO8
         9cbdD9tX4t/PFQlioSqb5jVcYlwQqaB9v1dFM6Ept7DPgtnSK8AtE8ygi+4sBAeNaUfj
         MkNuUiSkL7pKuIcj+zdsbRv70S9EKWfO9jv2o8gPwzeNKRhuVrTMG8EQVbQ677Qa7d/K
         DlqwvZ66sYTS1+XefijPOdqM2BBsZO9QaQRpYEyxvP/T7//yof5nDYUGVD93rocT08CI
         rhcAkTl9TkVnziFzwovQ+KcOWYQNWM4+QktrMmubFvBZj51SyW+tJauPyMReifbtkv+q
         Wx8Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xiGuHuOg;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mqdJ9pWfbPjiCdB2egrXI6J5cmqWsMdtPlXBhbZTKns=;
        b=IRDgQD+QEDOInfPtlQJNzIPgc2K8jouhhIK+qJIZrjQU56R0rQwjeiAcwvpL+Cd0JU
         4uxM1SEZ41671A/V3jnuzI7PhalIv1MY9ijB3ZI8jva+ud8o3TfkAbBiq+81IEv4YGtt
         82+DYqUz4U8YlgYasqSwBx2zXKK/DHv18DjnRi33n6csFj7eP0IkRi/8u3CyH6uBBigf
         TOG6ekuejtEvVUZhgdLPqGM6y7BP8mAF7R6t9Tgcfxx7nhdaH5FEnneqtWWWx9FiD8cT
         UXKfGZYj8mcuAeqb6bgXfm6Wk6vFN3hMl5C9TaOR+bb6Gs8OAvjiWjzlTHkmaz/RElm4
         Ec7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mqdJ9pWfbPjiCdB2egrXI6J5cmqWsMdtPlXBhbZTKns=;
        b=r9pjXl3M+Fa6DM+JfH3KSNzF8Phe7+BuFycGfmdy8stehfBYj5ax1kWwHX7PUxi4Qw
         wSEStvAcDxFbBXCRkdqqW+tbzgUyIVWpM1N3K0ePlfeM1hhrRmYJ66CZgphVL0p67GJE
         R+CXbH/wpTzUzATv0JT19K3x6pdho1QbPztvpyuZ/YvxDy/uKkr1HAhtqhx1H41fbD7/
         zk0zH8fqm3vm82VnlDqgcU3bljhVNzetSBUky+RSBO/nqkWYIFdwRdlYJS2xqAVQkw3G
         Qpk+WzrRJqGT9nWLtpbl2Ds+c+/ieMzexFa5z+VcGz7qg3YRCwmEbEH6E4+SySNYmtX0
         iDRg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW5WUcZlP9scbhWHUwB+YDiA3vVeQHLqwnC5IZyLY1oVNEak17N
	pdaaJsI6jVAJWKhAWR8SnlI=
X-Google-Smtp-Source: APXvYqybggEifkqlUXB/0YcWL89wYAhXEv6yEpS5DKdqflRFgCKxK3vjtHI4wdUluA/7V2Xfm6+WOA==
X-Received: by 2002:a81:8105:: with SMTP id r5mr15282566ywf.489.1566894078793;
        Tue, 27 Aug 2019 01:21:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ae98:: with SMTP id b24ls5066234ybj.12.gmail; Tue, 27
 Aug 2019 01:21:18 -0700 (PDT)
X-Received: by 2002:a25:5d09:: with SMTP id r9mr16605782ybb.237.1566894078524;
        Tue, 27 Aug 2019 01:21:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566894078; cv=none;
        d=google.com; s=arc-20160816;
        b=kKmr2b5Mns630ZtZsu+4mQ3gC6C8HuyN+/j7d31entHnHIElxBbLPOSiBXP6Lp3mPN
         ei/9TwFSeOSnC9RM+yeCkk4+jpoin1k0PEorfh+DI5pf6qYkj00irovqfhpqeE5uT0kM
         0/fs9XQZOmZJI0RxYcWFLFpHRsTjUKYVVVrGQ8pct4S99WzajF1c95AwXqdn5gfZJmzm
         OaPzdhDB/QiBWzzsv7cTV+IJJuNUCAeEVxMWtxbWrMYymWwxGbMkMY8bWAzX8YJLMWpo
         p3GpJ0u8bM3fdngVbjHSQUWzIaiO8gf0wZSBaiiiUS+aTw3zhTeVxIVvFt53pIBFYXVZ
         4YkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=I9ah9V2Qw3LXBD+x3cStxylpiNZXP2AJQphVYWXlyRQ=;
        b=MU32Q0g+L5fEkn9PeCDYT6EphSfLFByG1sLfucG7D1KKs3+ZergbmxY1boviDi31+U
         0xvTv52vkN5tZFOYeYholMWbNfhqwkqJbb6apVmndxqELRIMkCjNICxPSpb8Zs+eiONa
         9y/xaENv5iLf5lUGmEEiw3U+iTbVMDn31BSBJzPEu/VHdrFU7xJoyH5AYAVWyzX6ano9
         WY85g1ekc3u5tR/eukkKgxX+Q8Gbp7ZA5hjeZ9S7Q/xl6dLuKWfnd8S8GRqmm8yXotIV
         CZT9L8w6goOTv/LXq194QRIM7Ee+VQNxMdCfxqDgyl84UUV5XeSHYefblmx/PObz6190
         3Ejw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xiGuHuOg;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id j5si725378yba.2.2019.08.27.01.21.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 01:21:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 587C1206BA;
	Tue, 27 Aug 2019 08:21:11 +0000 (UTC)
Date: Tue, 27 Aug 2019 09:21:08 +0100
From: Will Deacon <will@kernel.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Josh Poimboeuf <jpoimboe@redhat.com>, Yonghong Song <yhs@fb.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	"Paul E. McKenney" <paulmck@linux.ibm.com>,
	Josh Triplett <josh@joshtriplett.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>,
	Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@kernel.org>,
	"Peter Zijlstra (Intel)" <peterz@infradead.org>,
	Nicholas Piggin <npiggin@gmail.com>, Jiri Kosina <jkosina@suse.cz>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Masahiro Yamada <yamada.masahiro@socionext.com>,
	Hans Liljestrand <ishkamiel@gmail.com>,
	Elena Reshetova <elena.reshetova@intel.com>,
	David Windsor <dwindsor@gmail.com>, Marc Zyngier <maz@kernel.org>,
	Ming Lei <ming.lei@redhat.com>, Dou Liyang <douliyangs@gmail.com>,
	Julien Thierry <julien.thierry.kdev@gmail.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Jens Axboe <axboe@kernel.dk>,
	linux-kernel <linux-kernel@vger.kernel.org>,
	linux-sparse@vger.kernel.org, rcu@vger.kernel.org,
	Network Development <netdev@vger.kernel.org>, bpf@vger.kernel.org
Subject: Re: [PATCH 14/16] include/linux: prefer __section from
 compiler_attributes.h
Message-ID: <20190827082106.mvatxqebpawuh4g5@willie-the-truck>
References: <20190812215052.71840-1-ndesaulniers@google.com>
 <20190812215052.71840-14-ndesaulniers@google.com>
 <20190813083257.nnsxf5khnqagl46s@willie-the-truck>
 <CANiq72mXvuVdO2i9gobmh9YeUW4bhe7YnqQc6PaZrbqua1DoYw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72mXvuVdO2i9gobmh9YeUW4bhe7YnqQc6PaZrbqua1DoYw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xiGuHuOg;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Sat, Aug 24, 2019 at 02:51:46PM +0200, Miguel Ojeda wrote:
> On Tue, Aug 13, 2019 at 10:33 AM Will Deacon <will@kernel.org> wrote:
> >
> > -ENOCOMMITMESSAGE
> >
> > Otherwise, patch looks good to me.
> 
> Do you want Ack, Review or nothing?

You can add my Ack if a commit message appears.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190827082106.mvatxqebpawuh4g5%40willie-the-truck.
