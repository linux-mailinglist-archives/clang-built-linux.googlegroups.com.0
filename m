Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBBFPS35AKGQEV5RPH7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 397BA2523EA
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 00:58:14 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id lx6sf49802pjb.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Aug 2020 15:58:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598396292; cv=pass;
        d=google.com; s=arc-20160816;
        b=PlkQZljW0QozrakYHCS/2tn+umPHulRxHjb/ykRg8189SthXpuqCEEk0FnJwdQUKcR
         91ZYOcSoAvzPCP3H13k8bLt01ytdGvCyer5VLkrMFPkon0crxpAgEKiAReOF3kemSjcy
         2blytlZ2jKYuTUbp1Zez6oT8zLPAzgtmQRnAUDv1gEoHebK7BBodegaVA2SQ1cIysiWd
         BoTPrFjHWhTnLBHo13kdvN+dkbzwKwmH086M2SjRPqJ+iG98Qhh+igRboa9YFjz9PNHe
         0Lce+YhnmA3N2WwUHyYC9HoXXIKTJmaOotsJ1KuvsWwrJuGW6btsowxfLsfTNF3jQX+O
         nvYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=I12r2kAjw7pjE2tGpuOBj4sYSy1/TIDJmqtUIPVegnA=;
        b=s5c31LaetxFeH9Hbsa6nMIqEtXIrsMLFWmNzTRW3Hj6TQTRXY1V+2sMqqkeqgabWqB
         bUraMFxp/ADPt9hJlpkFLCa/hH0NI/XWGlI7fdBtHGmhANh2KgOzxj1iblGw/wBg/f7h
         s/1nbphPpBBtArkCUlT+7uigLXkHr0uHm15beflMjcC2e4xZaKCHpNDnWV8v5CN7RqF4
         8MYRxd6hzxDEtdaKoabNPk65i3GLWljYH2bIxxfNl1m0yrCpQSfomPBGG02S8VmMKJWQ
         HODcVHQ19TUdVFk7kESjcFji8b3oUNZTluUhSgWjUia3vFs/znvrX3WQdwvDns1l2V7h
         7FPQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=tko7O8ws;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.225 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I12r2kAjw7pjE2tGpuOBj4sYSy1/TIDJmqtUIPVegnA=;
        b=fPcHUCB5uZTYKOddKqh9EkUmMI+FJZGLZ7gzQ8OlnXFO/RRneIUro87hYhixnmJS4B
         rVtYui+0Fa3deYjQQW9OAM9nu8hJn1wziQ6fTo4WtA1o6KDgFUOCjQ8h5ABKsQ8/YYfu
         eBwkj7dy9AfcqFSAUOFPRHAEpl44OUL8+3XPcyC43wOYvR9G2rLJ/zdbPrUVh+u+VGlI
         egS0bkWazqUkiFQjA6QN7loflHnNCroy7DmOei+EsJaCWhNS3R/pExghOnB242BwyFFG
         eLxnzE1Zup+nGYS/DSM0vvY1OtdzZO5eACbLeLIQ9jjgMEkof1gvflGWcuevVRTumdkz
         mR0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=I12r2kAjw7pjE2tGpuOBj4sYSy1/TIDJmqtUIPVegnA=;
        b=S/x2dqjpeSZ5kvUkpbl7QPZ+WvfRxSx2NKdvRcuNv3uKspOnwd2g7KIpKfad/8P4eA
         x223+E17+3Sn6wwLqezaX/fKooDEBocyZYW8bpTNvjdR1iugdFj+j7IRIYkjz4KpZ0K5
         b5Dy6IWI87wvmt6EKjqu6fSDr7WjIyWJ9bu6Hf3q5yd93rL0q+CXUClLFqZad0v/3/QN
         9DeuwDd1bFuuD7UHJSzpBfo9YQ92Ggd9MDEr92YrOatswmong+gdp/NkgfRWhbK5RhIo
         /LjX9kqG+iepw2dm+ed2D3x6dh8l39w4CjHY3MqQkI4uHZ9BnKppi8QQ2C5cgDHPkIBz
         j64Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532DUXPOVlcmLg2O7sv9Ym6bEbhVdTmze+CIeq98HzF7a+0skYq1
	46UrhguLBoQE5QA0UqLWEvg=
X-Google-Smtp-Source: ABdhPJwUWNhbudegVtVFHs7htJAUjFaiDKIxmPGvBBwuyZjWpIKzI8M5fuLeUIuR1/3LbX2BTXWI8w==
X-Received: by 2002:a17:90a:a4ca:: with SMTP id l10mr3377686pjw.207.1598396292798;
        Tue, 25 Aug 2020 15:58:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:9250:: with SMTP id s16ls36113pgn.7.gmail; Tue, 25 Aug
 2020 15:58:12 -0700 (PDT)
X-Received: by 2002:a63:fa01:: with SMTP id y1mr8215536pgh.284.1598396292323;
        Tue, 25 Aug 2020 15:58:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598396292; cv=none;
        d=google.com; s=arc-20160816;
        b=1A3MoI+wghsyZNFPTJ2967y49ZZruM3PFfrcgZX1NXusnwNNVxccci4KDxAPDKMdA5
         oMgQe1+fE1TguMP86w/+zQzZgpjSNnAJGboE499nLwJUa3/8IC+IDeNAE4gKo4hmwBXA
         lC1QlIv2vzIEh0fHpqdBjzVzbr7dIrrBWfkpCwLgLop71023jZuCDFFa8i3L2z/j3t5D
         oDQyLizlNxvmzRJAAr2wiMwnHoVCq3KIykLlaTW8DuXFk/Zsk1qBQ1HhMnMj8fLVjlOb
         Yux6Psyr9tgEBjIMvM821W3S4m0WTG+qwtBGRhVnYUafCp5Lfib42h+JzzIVkutU9B+E
         Fq9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=qbTX7+RfGTdBt/QiCAJh2phecdvKxL9tHi/iN+H8Res=;
        b=kjd/CtmCLVXFuUNWIM0lHRZ2oUxNxnocZt3d6k22+bnxXqwg30/xY84JRbH+ra/jFv
         NVF4t0CyVPUg8Nr3lWdIXE0KNe7T1Hvv6HrkgM1ubAOrscKmtJtXxr5mrgVyVZuU6z2f
         V+Vxo9R11oEM5M1u8HjAwv18IRVGDpMcUbIEnhCNA2fNRwH8IanC9svYj372TQwaxo2d
         fIoGawaa0iehQk7wplAqHBoPjyYc9qiYiNJVbDrK3RpaK5JspgPR4zez4SDp9kWsCmA6
         CAtA6v1wUlJ3kBUv62V3qFDj89E0jXZHd3Nn3SpgTsC9qBmX0kEWDWKNzUXI4M6RDexp
         Ow0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=tko7O8ws;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.225 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway22.websitewelcome.com (gateway22.websitewelcome.com. [192.185.46.225])
        by gmr-mx.google.com with ESMTPS id v17si18946pjy.3.2020.08.25.15.58.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Aug 2020 15:58:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.225 as permitted sender) client-ip=192.185.46.225;
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
	by gateway22.websitewelcome.com (Postfix) with ESMTP id 3DC454A10
	for <clang-built-linux@googlegroups.com>; Tue, 25 Aug 2020 17:58:11 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id AhtLkTLiAdbRzAhtLkK7Ls; Tue, 25 Aug 2020 17:58:11 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:40606 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <gustavo@embeddedor.com>)
	id 1kAhtK-004D5n-Ja; Tue, 25 Aug 2020 17:58:10 -0500
Subject: Re: [PATCH] Documentation: add minimum clang/llvm version
To: Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>, Jonathan Corbet <corbet@lwn.net>,
 Randy Dunlap <rdunlap@infradead.org>, Theodore Ts'o <tytso@mit.edu>,
 Kees Cook <keescook@chromium.org>, Will Deacon <will@kernel.org>,
 Borislav Petkov <bp@suse.de>, "Alexander A. Klimov"
 <grandmaster@al2klimov.de>, clang-built-linux@googlegroups.com,
 linux-kbuild@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20200825222552.3113760-1-ndesaulniers@google.com>
 <20200825225131.GA2702183@ubuntu-n2-xlarge-x86>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 xsFNBFssHAwBEADIy3ZoPq3z5UpsUknd2v+IQud4TMJnJLTeXgTf4biSDSrXn73JQgsISBwG
 2Pm4wnOyEgYUyJd5tRWcIbsURAgei918mck3tugT7AQiTUN3/5aAzqe/4ApDUC+uWNkpNnSV
 tjOx1hBpla0ifywy4bvFobwSh5/I3qohxDx+c1obd8Bp/B/iaOtnq0inli/8rlvKO9hp6Z4e
 DXL3PlD0QsLSc27AkwzLEc/D3ZaqBq7ItvT9Pyg0z3Q+2dtLF00f9+663HVC2EUgP25J3xDd
 496SIeYDTkEgbJ7WYR0HYm9uirSET3lDqOVh1xPqoy+U9zTtuA9NQHVGk+hPcoazSqEtLGBk
 YE2mm2wzX5q2uoyptseSNceJ+HE9L+z1KlWW63HhddgtRGhbP8pj42bKaUSrrfDUsicfeJf6
 m1iJRu0SXYVlMruGUB1PvZQ3O7TsVfAGCv85pFipdgk8KQnlRFkYhUjLft0u7CL1rDGZWDDr
 NaNj54q2CX9zuSxBn9XDXvGKyzKEZ4NY1Jfw+TAMPCp4buawuOsjONi2X0DfivFY+ZsjAIcx
 qQMglPtKk/wBs7q2lvJ+pHpgvLhLZyGqzAvKM1sVtRJ5j+ARKA0w4pYs5a5ufqcfT7dN6TBk
 LXZeD9xlVic93Ju08JSUx2ozlcfxq+BVNyA+dtv7elXUZ2DrYwARAQABzStHdXN0YXZvIEEu
 IFIuIFNpbHZhIDxndXN0YXZvYXJzQGtlcm5lbC5vcmc+wsGrBBMBCAA+FiEEkmRahXBSurMI
 g1YvRwW0y0cG2zEFAl6zFvQCGyMFCQlmAYAFCwkIBwIGFQoJCAsCBBYCAwECHgECF4AAIQkQ
 RwW0y0cG2zEWIQSSZFqFcFK6swiDVi9HBbTLRwbbMZsEEACWjJyXLjtTAF21Vuf1VDoGzitP
 oE69rq9UhXIGR+e0KACyIFoB9ibG/1j/ESMa0RPSwLpJDLgfvi/I18H/9cKtdo2uz0XNbDT8
 i3llIu0b43nzGIDzRudINBXC8Coeob+hrp/MMZueyzt0CUoAnY4XqpHQbQsTfTrpFeHT02Qz
 ITw6kTSmK7dNbJj2naH2vSrU11qGdU7aFzI7jnVvGgv4NVQLPxm/t4jTG1o+P1Xk4N6vKafP
 zqzkxj99JrUAPt+LyPS2VpNvmbSNq85PkQ9gpeTHpkio/D9SKsMW62njITPgy6M8TFAmx8JF
 ZAI6k8l1eU29F274WnlQ6ZokkJoNctwHa+88euWKHWUDolCmQpegJJ8932www83GLn1mdUZn
 NsymjFSdMWE+y8apWaV9QsDOKWf7pY2uBuE6GMPRhX7e7h5oQwa1lYeO2L9LTDeXkEOJe+hE
 qQdEEvkC/nok0eoRlBlZh433DQlv4+IvSsfN/uWld2TuQFyjDCLIm1CPRfe7z0TwiCM27F+O
 lHnUspCFSgpnrxqNH6CM4aj1EF4fEX+ZyknTSrKL9BGZ/qRz7Xe9ikU2/7M1ov6rOXCI4NR9
 THsNax6etxCBMzZs2bdMHMcajP5XdRsOIARuN08ytRjDolR2r8SkTN2YMwxodxNWWDC3V8X2
 RHZ4UwQw487BTQRbLBwMARAAsHCE31Ffrm6uig1BQplxMV8WnRBiZqbbsVJBH1AAh8tq2ULl
 7udfQo1bsPLGGQboJSVN9rckQQNahvHAIK8ZGfU4Qj8+CER+fYPp/MDZj+t0DbnWSOrG7z9H
 IZo6PR9z4JZza3Hn/35jFggaqBtuydHwwBANZ7A6DVY+W0COEU4of7CAahQo5NwYiwS0lGis
 LTqks5R0Vh+QpvDVfuaF6I8LUgQR/cSgLkR//V1uCEQYzhsoiJ3zc1HSRyOPotJTApqGBq80
 X0aCVj1LOiOF4rrdvQnj6iIlXQssdb+WhSYHeuJj1wD0ZlC7ds5zovXh+FfFl5qH5RFY/qVn
 3mNIVxeO987WSF0jh+T5ZlvUNdhedGndRmwFTxq2Li6GNMaolgnpO/CPcFpDjKxY/HBUSmaE
 9rNdAa1fCd4RsKLlhXda+IWpJZMHlmIKY8dlUybP+2qDzP2lY7kdFgPZRU+ezS/pzC/YTzAv
 CWM3tDgwoSl17vnZCr8wn2/1rKkcLvTDgiJLPCevqpTb6KFtZosQ02EGMuHQI6Zk91jbx96n
 rdsSdBLGH3hbvLvjZm3C+fNlVb9uvWbdznObqcJxSH3SGOZ7kCHuVmXUcqozol6ioMHMb+In
 rHPP16aVDTBTPEGwgxXI38f7SUEn+NpbizWdLNz2hc907DvoPm6HEGCanpcAEQEAAcLBZQQY
 AQgADwUCWywcDAIbDAUJCWYBgAAKCRBHBbTLRwbbMdsZEACUjmsJx2CAY+QSUMebQRFjKavw
 XB/xE7fTt2ahuhHT8qQ/lWuRQedg4baInw9nhoPE+VenOzhGeGlsJ0Ys52sdXvUjUocKgUQq
 6ekOHbcw919nO5L9J2ejMf/VC/quN3r3xijgRtmuuwZjmmi8ct24TpGeoBK4WrZGh/1hAYw4
 ieARvKvgjXRstcEqM5thUNkOOIheud/VpY+48QcccPKbngy//zNJWKbRbeVnimua0OpqRXhC
 rEVm/xomeOvl1WK1BVO7z8DjSdEBGzbV76sPDJb/fw+y+VWrkEiddD/9CSfgfBNOb1p1jVnT
 2mFgGneIWbU0zdDGhleI9UoQTr0e0b/7TU+Jo6TqwosP9nbk5hXw6uR5k5PF8ieyHVq3qatJ
 9K1jPkBr8YWtI5uNwJJjTKIA1jHlj8McROroxMdI6qZ/wZ1ImuylpJuJwCDCORYf5kW61fcr
 HEDlIvGc371OOvw6ejF8ksX5+L2zwh43l/pKkSVGFpxtMV6d6J3eqwTafL86YJWH93PN+ZUh
 6i6Rd2U/i8jH5WvzR57UeWxE4P8bQc0hNGrUsHQH6bpHV2lbuhDdqo+cM9ehGZEO3+gCDFmK
 rjspZjkJbB5Gadzvts5fcWGOXEvuT8uQSvl+vEL0g6vczsyPBtqoBLa9SNrSVtSixD1uOgyt
 AP7RWS474w==
Message-ID: <8e867824-48ca-f63a-c863-d4ce9f9ebf75@embeddedor.com>
Date: Tue, 25 Aug 2020 18:04:09 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200825225131.GA2702183@ubuntu-n2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1kAhtK-004D5n-Ja
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:40606
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 12
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=tko7O8ws;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.46.225 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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



On 8/25/20 17:51, Nathan Chancellor wrote:
> On Tue, Aug 25, 2020 at 03:25:51PM -0700, Nick Desaulniers wrote:
>> Based on a vote at the LLVM BoF at Plumbers 2020, we decided to start
>> small, supporting just one formal upstream release of LLVM for now.
>>
>> We can probably widen the support window of supported versions over
>> time.  Also, note that LLVM's release process is different than GCC's.
>> GCC tends to have 1 major release per year while releasing minor updates
>> to the past 3 major versions.  LLVM tends to support one major release
>> and one minor release every six months.
>>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> ---
>> Note to reviewers: working remote, I'm having trouble testing/verifying
>> that I have the RST links wired up correctly; I would appreciate it if
>> someone is able to `make htmldocs` and check
>> Documentation/output/process/changes.html properly links to
>> Documentation/output/kbuild/llvm.html.
> 
> I ran 'make O=out htmldocs' and can confirm that the link works properly
> in process/changes.html, pointing to kbuild/llvm.html.
> 

The same here.

Tested-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks
--
Gustavo

>>  Documentation/kbuild/llvm.rst     |  2 ++
>>  Documentation/process/changes.rst | 10 ++++++++++
>>  2 files changed, 12 insertions(+)
>>
>> diff --git a/Documentation/kbuild/llvm.rst b/Documentation/kbuild/llvm.rst
>> index 2aac50b97921..70ec6e9a183b 100644
>> --- a/Documentation/kbuild/llvm.rst
>> +++ b/Documentation/kbuild/llvm.rst
>> @@ -1,3 +1,5 @@
>> +.. _kbuild_llvm:
>> +
>>  ==============================
>>  Building Linux with Clang/LLVM
>>  ==============================
>> diff --git a/Documentation/process/changes.rst b/Documentation/process/changes.rst
>> index ee741763a3fc..6c580ef9f2a3 100644
>> --- a/Documentation/process/changes.rst
>> +++ b/Documentation/process/changes.rst
>> @@ -30,6 +30,7 @@ you probably needn't concern yourself with pcmciautils.
>>          Program        Minimal version       Command to check the version
>>  ====================== ===============  ========================================
>>  GNU C                  4.9              gcc --version
>> +Clang/LLVM (optional)  10.0.1           clang --version
> 
> Maybe it is worth making the "(optional)" a footnote like Sphinx? Seems
> to just kind of stick out to me but I do not have a strong opinion
> unless others do.
> 
>>  GNU make               3.81             make --version
>>  binutils               2.23             ld -v
>>  flex                   2.5.35           flex --version
>> @@ -68,6 +69,15 @@ GCC
>>  The gcc version requirements may vary depending on the type of CPU in your
>>  computer.
>>  
>> +Clang/LLVM (optional)
>> +---------------------
>> +
>> +The latest formal release of clang and LLVM utils (according to
>> +`releases.llvm.org <https://releases.llvm.org>`_) are supported for building
>> +kernels. Older releases aren't gauranteed to work, and we may drop workarounds
>> +from the kernel that were used to support older versions. Please see additional
>> +docs on :ref:`Building Linux with Clang/LLVM <kbuild_llvm>`.
>> +
> 
> Do we maybe want to add a section for LLVM/clang in the "Getting updated
> software" section? Maybe just a link to the existing section that we
> have in kbuild/llvm.rst?
> 
>>  Make
>>  ----
>>  
>> -- 
>> 2.28.0.297.g1956fa8f8d-goog
>>
> 
> Regardless of the nits above:
> 
> Reviewed-and-tested-by: Nathan Chancellor <natechancellor@gmail.com>
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/8e867824-48ca-f63a-c863-d4ce9f9ebf75%40embeddedor.com.
