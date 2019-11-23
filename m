Return-Path: <clang-built-linux+bncBDE5JTGNZULRBWPN4HXAKGQEGXNAQ2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id B09BB107BD1
	for <lists+clang-built-linux@lfdr.de>; Sat, 23 Nov 2019 01:01:31 +0100 (CET)
Received: by mail-qk1-x73a.google.com with SMTP id q125sf5409288qka.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Nov 2019 16:01:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574467290; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZGIpfWfN7rhpWqWl11qOcAebotnEns753dlZ0Y4wgtgAMxj2cCQpP+OUYryn2IjMsR
         PPUvlhIFjK/ykP0zKbbEiW2rYCrG13d5WnH5pT8XYPaqoF6fhtsMX5VnVw9PNd6Y2b8q
         gnchWfzlrPyx3k7U/UIuB2xzvURLmVYYH4Gt3oQkMfwaUqakwPAC8g/FT5aRgsfMtNWX
         oz3XU7FfNx3MO1Oau5X8OG4I0hoN3P2kEiHqibb1B9GpQvTkC8R4bCharSDt4+gPQQ+F
         rIjC3JwUu+1WEEu6MaAlSjvF4BWRdb6KGxlqLEDf1LrPUm+RlWhjCFWPrsjg5FIF8dQp
         Lh0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:to
         :from:date:sender:dkim-signature;
        bh=e4WEvdqlYUsVY2raxqxely1Dr1lLjCOxwF21O17e14g=;
        b=sYCUHbDqac47tNXSRKRMbBKTv+HfHMHqB/R/0FfVZC9aa/mwojuJvZ3DVa8nbFzuho
         y4TlDnTrmDTQllPPkaysU4a3GSIVK0o68gB9/5XFae+kmb5rNxx9q9K4x7pOzBLbOMIR
         8F2Czmz6GoeTk1Sc/lOdSswck03GalqtEbXkELl/OwtHlibwy1RX9yfircFt7RjWiLWI
         Uds/0TUv9+rteDGLZtrXVvR4Sr64+wAitkg+grZQbaI0+OIvkXlE8F06GwSLmHffV4cm
         Uh6gkVEVBe9pjT785pezCLt9zkkFum/Lb5LjZMUNqi0uT7VT//MG4RNFqDkMgCvtBiU1
         gpyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=ufnbRqcp;
       spf=neutral (google.com: 2607:f8b0:4864:20::543 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=e4WEvdqlYUsVY2raxqxely1Dr1lLjCOxwF21O17e14g=;
        b=bdcv9qtCVnznAUpf0OQhIZDdQvfO1WJrE0IFRlDk6ry0hdosNt3UDMT3JZPdhiCrSj
         iI9ONU6tOq7GEMhQJHjMQI4y32scfLsxfL6EVhHrPxQv504GhC3skDNuTVB2aMr7Bdq5
         +6g/QYnXkkHGXni0zaLP9aT8KGXfRjbXQ78PRdx24dRU1+MjmO4R2pU9P2861ulfYM7P
         F1HwHzuDY4Tp3K+wUfKZdZCIreiNK126xHSieLmKfxWO1mUvWseNsuD4I/zZs33jeE0O
         RW0W0xOaFCRjPVgJ4KnI0n+pqcWeyJGiBCDJQ45Vu5U2TzjS6J5sZKdgColSB6lD6CXV
         097w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=e4WEvdqlYUsVY2raxqxely1Dr1lLjCOxwF21O17e14g=;
        b=Vqur3/bIKu6k27qbNcHOHg8HZdA55TjSep3NVYyz2O1O1mwNN6o/jDbWR6qEMjqZJJ
         bbA0YGRZHs6+bwOfXS/wWFZSahd0COki9aoeujJ9n629WCDBr7Pw94ozwLOBOx2Xpt4r
         PwYDpJ6d902oS2yIC4+ABtB8sjqUbq9cH7DcDOfbmKTbdwmKbNYKOLqRQu7DPkpNTCKH
         AxkDRyuU+rtOdPNZwEvGDHdU4fn0M9WvB5ZgBInhNyn6UPDyJw64ovXVCCkYE/Hr5tRJ
         /MJW7zkXZ12PuXyyiCAiHrZjmPW0ankGtXZNKff1EuM1qO7zp1lT09Xm9e2XYFK5AWK3
         MFaw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVsEF7+0qhR/iPYsXzdEF1ySZ14bqbNDMqqJJUrjqlYDGMh102H
	kyArjNx9n4X9sE+J5xTMGZg=
X-Google-Smtp-Source: APXvYqwnX5l/dm2rhBQvA8li6vzQb+JrPqFWLx/pfgOiU+EJRSOJez3kbWtET7WXy6oV8RKB480HVg==
X-Received: by 2002:ac8:6941:: with SMTP id n1mr15461908qtr.36.1574467290030;
        Fri, 22 Nov 2019 16:01:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6747:: with SMTP id n7ls82678qtp.6.gmail; Fri, 22 Nov
 2019 16:01:29 -0800 (PST)
X-Received: by 2002:aed:3eee:: with SMTP id o43mr8957871qtf.33.1574467289556;
        Fri, 22 Nov 2019 16:01:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574467289; cv=none;
        d=google.com; s=arc-20160816;
        b=Sh3+6brvr1rwca4PMp5oHbXzPII0KAL+JN0spBQ9n/Rdj1bHc26wOQJEnLkorZ3plv
         Hc30oxDO+SSONsv6/YuRRnJBTuyY6ostx22m/IqWbj4HSHO5gHuXi9Ita0wrqZhu1ePE
         3Oh6gRzrdnvnYR5nibKet6IR1EfFbhNFiaRYg38Sxl4Xye5qWQ+gGzEvbHP1a9xEGKjB
         wDiW7xdJyhJPDOfl40df6XoJDVLl34RJH7t3C0YIImn9zRq57AgNKewAueHPAyWLJZvt
         bCnjA5UMxRCTq699ORPD3pj1wvwWC0z/kCjbRTppkHpFqwc64LtXX8uTsnVHiTyuu0km
         3hgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=8+yuRo8leBwiMoTIdlspRuC+nuf9tPvJBSaoVlCYcr0=;
        b=bZGV/Zv+21VWqp/mK8nKZcUUliyW5wNddWrO1plRbigBbZQLI7t5Scduebb2BWpne+
         ry/1VCckUrJfR271m3YiZLB0+eniX/3pgsu/dwMZjW7KL4BSYTJtghAYaTuJPGO1ElQl
         QQrGsZWftmPs9nNW6dnEgqZIeEXPl0P5zELMasgL5LP1KBKXamSDYcqlHYoUoE+hVfUD
         qMQX1iw6tH0ZerxCH5cdaUELBNUuihwOg6K7RdFoalzi+kPBgGgOyyMjoE1loIcqGHKM
         mG0Mi8BzKuzZxlyGyzoFHBIkLNPcTQPPaBjujGUgUmurVzGPXE7TEyZlWsM56ieEUkvy
         zPNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=ufnbRqcp;
       spf=neutral (google.com: 2607:f8b0:4864:20::543 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id j194si316879qke.0.2019.11.22.16.01.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2019 16:01:29 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::543 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id e17so4093315pgd.7
        for <clang-built-linux@googlegroups.com>; Fri, 22 Nov 2019 16:01:29 -0800 (PST)
X-Received: by 2002:a62:b607:: with SMTP id j7mr20921713pff.39.1574467288498;
        Fri, 22 Nov 2019 16:01:28 -0800 (PST)
Received: from localhost ([2601:646:8f00:18d9:d0fa:7a4b:764f:de48])
        by smtp.gmail.com with ESMTPSA id u207sm8940594pfc.127.2019.11.22.16.01.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Nov 2019 16:01:27 -0800 (PST)
Date: Fri, 22 Nov 2019 16:01:27 -0800
From: Stanislav Fomichev <sdf@fomichev.me>
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>,
	Alexei Starovoitov <ast@kernel.org>,
	Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <jakub.kicinski@netronome.com>,
	Jesper Dangaard Brouer <hawk@kernel.org>,
	john fastabend <john.fastabend@gmail.com>,
	open list <linux-kernel@vger.kernel.org>,
	Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com,
	Andrii Nakryiko <andriin@fb.com>
Subject: Re: [PATCH v5 bpf-next 11/15] libbpf: don't use cxx to test_libpf
 target
Message-ID: <20191123000127.GC3145429@mini-arch.hsd1.ca.comcast.net>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-12-ivan.khoronzhuk@linaro.org>
 <20191121214225.GA3145429@mini-arch.hsd1.ca.comcast.net>
 <CAEf4BzZWPwzC8ZBWcBOfQQmxBkDRjogxw2xHZ+dMWOrrMmU0sg@mail.gmail.com>
 <20191122163211.GB3145429@mini-arch.hsd1.ca.comcast.net>
 <20191122234733.GA2474@khorivan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191122234733.GA2474@khorivan>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: sdf@fomichev.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623
 header.b=ufnbRqcp;       spf=neutral (google.com: 2607:f8b0:4864:20::543 is
 neither permitted nor denied by best guess record for domain of
 sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
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

On 11/23, Ivan Khoronzhuk wrote:
> On Fri, Nov 22, 2019 at 08:32:11AM -0800, Stanislav Fomichev wrote:
> > On 11/21, Andrii Nakryiko wrote:
> > > On Thu, Nov 21, 2019 at 1:42 PM Stanislav Fomichev <sdf@fomichev.me> wrote:
> > > >
> > > > On 10/11, Ivan Khoronzhuk wrote:
> > > > > No need to use C++ for test_libbpf target when libbpf is on C and it
> > > > > can be tested with C, after this change the CXXFLAGS in makefiles can
> > > > > be avoided, at least in bpf samples, when sysroot is used, passing
> > > > > same C/LDFLAGS as for lib.
> > > > > Add "return 0" in test_libbpf to avoid warn, but also remove spaces at
> > > > > start of the lines to keep same style and avoid warns while apply.
> > > > Hey, just spotted this patch, not sure how it slipped through.
> > > > The c++ test was there to make sure libbpf can be included and
> > > > linked against c++ code (i.e. libbpf headers don't have some c++
> > > > keywords/etc).
> > > >
> > > > Any particular reason you were not happy with it? Can we revert it
> > > > back to c++ and fix your use-case instead? Alternatively, we can just
> > > > remove this test if we don't really care about c++.
> > > >
> > > 
> > > No one seemed to know why we have C++ pieces in pure C library and its
> > > Makefile, so we decide to "fix" this. :)
> > It's surprising, the commit 8c4905b995c6 clearly states the reason
> > for adding it. Looks like it deserved a real comment in the Makefile :-)
> 
> I dislike changing things like this, but I was asked while review and
> it seemed logical enough. The comment could prevent us from doing this.
No worries, I'll add it back with a comment :-)

> > > But I do understand your concern. Would it be possible to instead do
> > > this as a proper selftests test? Do you mind taking a look at that?
> > Ack, will move this test_libbpf.c into selftests and convert back to
> > c++.
> 
> -- 
> Regards,
> Ivan Khoronzhuk

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191123000127.GC3145429%40mini-arch.hsd1.ca.comcast.net.
