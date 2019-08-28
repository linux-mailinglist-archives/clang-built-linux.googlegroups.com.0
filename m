Return-Path: <clang-built-linux+bncBDY3NC743AGBBXGWS7VQKGQEOQ5RWWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id CD04A9F868
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Aug 2019 04:47:57 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id b8sf946833pfd.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Aug 2019 19:47:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566960476; cv=pass;
        d=google.com; s=arc-20160816;
        b=cQ1MCHvllFQPvC4imcgS8xkTd/4cezTokfb3bbahWne+tWfPV07NzVciW097Cv4M/q
         lGUOCCkdpIBtWrXCj+0TJT3AfQj0FPxa/VgI9YczzqbWJgPW0s0YobRJdPAAlVskULdu
         1mbx0FX/kkux6HzuyBkwGoiNR0cUyqA7Q0QmTPRcWyG0VDtOf+Qvlrwi+aFQRJelqIYm
         tC8IotTxApjIqNpZX64ah3+wmkBdM468SDWomBy5ExjKG6yvkeQsH+RTXHZE141jjqeJ
         5h+oYULXbg+oPAFD3yg2mW84bxnQdsT7jmE6SRiaIIJ5yfjzLISnu8sN7ZiyIhGFOu33
         gZmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=frWFCunSn6LDaNyCjsvRpUG/GTC/ZVs7TKyJdXSUgeA=;
        b=OoqR44W5bhVCbWp3J4EBZHJR8W3fpbgKjlEWfUe1ajOxTXSbnJXxcDMGoGMZwTvE7i
         HkDFhtEbIypGmFghEfTYk7PD8wwV1WVyEhmVerLgUG50QfSS/+4UKhQEUlBlD0i6E2Wb
         dkTIx11WYhecHLuwFonBEUq21jl6uNM4sbymq7BaJrFDwkHsNPuf3F3piuE2RLnrl/1v
         a6T7zUht3YjKmTyjlvxulwVSHWrNhIrP9Tu5fdfjb9S2AF9ZZZ5ONq2R3gC6bommGcBl
         tITc7k+2Zg3qecbNVXx/FTTQlhRw30kuK8sDpnoz95jc7GvPy12+0/cKkvu4Koh/S3LX
         vseQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.168 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=frWFCunSn6LDaNyCjsvRpUG/GTC/ZVs7TKyJdXSUgeA=;
        b=hq13PzCNwWl/78jWJd9URKguLZlb2i3jrwNUSLHrt7woclsNsMe3SLyt3E31oz0rRO
         TgJLvkXTtQfTY9KeYrmHjoE1/MZiQxRd8EnOqbdOSgveTKfsqauVOME5naEHq1eMZh/X
         ekbEHEFAr+G2ROCdTBnShgrY0Ncj675LQO7RXTh5pJu6Dx4yvbXpVNqsJ/8USsagg+AY
         kEnii2vdj8m8lymltnWacn2xtL4jkgWlsmVmitrmizV2eFoxjMpQ5yBNF/igutZvTaNf
         HySMh7QCq6ZXEzSTgO/vxwQeyax2Hhara1UOpyiSjsnPxz/H2DMZeh+qLlVjYWKHGk4m
         zJHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=frWFCunSn6LDaNyCjsvRpUG/GTC/ZVs7TKyJdXSUgeA=;
        b=dJuR0JeJUzkSfOwYk3R9G7jeNts1hAC19AYn8ZTOA1vk2evGMhIoErDwDUaJVajBum
         Me9fIkmRKu6bd+6+FmtJJBTdD2Thj6ucgfF+zX+otRoz1ku57VHcVHdhOrLUSqKaQj0K
         ES/Bn7hnkztp8F3FuU6aCAMMqE4JZLgqOdrfJ5v7kcku0fKbxPv5WdFgFgzEP2kuoYhq
         4y/MC66xGpuMQxcqQ94HJVAAAOYANbJCaNVLfUmbfLeWASoSG1sCASiKekih8DXtUFf6
         jV37BMh8fT1x0aaECiSBIEc+L9Ers/1KHJ7uq7TogVYM0LJH7wbGO2IPy0AHIPpuAOI3
         IGeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUYo6uu7h/7k2EGgHTCvpDWfArKi74SEnMqDnhLyppHxVN9BG2i
	/4tlXOCmQcvGBaUxd3k/ruU=
X-Google-Smtp-Source: APXvYqyTGO7f/cs/OOwfepYR79jLwmHDaDIozAnbKzy8hhib5jgn3TgJi572WqVwvH6oR9b+7tK15Q==
X-Received: by 2002:aa7:80d7:: with SMTP id a23mr2007666pfn.208.1566960476220;
        Tue, 27 Aug 2019 19:47:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:3742:: with SMTP id e63ls458224pfa.7.gmail; Tue, 27 Aug
 2019 19:47:55 -0700 (PDT)
X-Received: by 2002:aa7:9591:: with SMTP id z17mr2010603pfj.215.1566960475952;
        Tue, 27 Aug 2019 19:47:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566960475; cv=none;
        d=google.com; s=arc-20160816;
        b=g8Cy826rX+JA3MYFQ67+D3a0SUhhCUTOjEuG2sdGctAjuQaXZh/E2tRFp3JWi3Bd1B
         GQId2RK8y1GI4W76A7dFrp7Egts6LlB4guma5hJE6aPhbwI8VBhhS1jPPNGs+GA9P35V
         gMbh+l/GS/VXwFkVZPUCnIprQ6pqvOwXvupEcJ9yPgIvb6aZSuC2cQTrPNzwMaDdz8Ro
         8IgVHQjFUvOCs6a4BbrqNr9uvmEYNF75LnZowhOXi0srqrvC8q0ikr/okB/+P89Dbfwl
         qC0ZzjXXEX1SZ6AMBeIG68g8Aku/qQw8/RsIjNehsg8gZnREuQm5vvhtJg76jSsKLS2u
         s+tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=FMiviXHFMbqg+7/dZO52WzwUl0FzClQ4n8+Joa8N1jo=;
        b=YKhq7DN67vjzT1u5AMssOe6QCFSug9qwmQyAzcnAz+9M0SPZX4d7Qz0PNWOfUPCGIj
         AoG/7kuOTmWVczC3SBeIB8aHIV4cz40mwyZuB1baCCvfKF3LU6kwfo5PjW7U2cIO8Vll
         jpmfRHdPoe3kMmabT97/h5slAfDVrRfyqKyW13YRYmBdwtRJXqHcfq09WZlsAIs2zeys
         pVRx7EWELXc+dkdke1/I4PXK3WJ2GtoNw+3Qi4EhTCmWEOO5vT/YqykD26cRsULuKZ3R
         5Li4e3W3Algzue0nTZc3Nl9MBposnyJQtCPtRouMDakMUw6c3hDfzVbErnMfulTf0Yql
         Aivw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.168 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0168.hostedemail.com. [216.40.44.168])
        by gmr-mx.google.com with ESMTPS id f125si53706pgc.4.2019.08.27.19.47.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Aug 2019 19:47:55 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.168 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.168;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 8F456182CED28;
	Wed, 28 Aug 2019 02:47:54 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::,RULES_HIT:41:355:379:599:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1539:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3350:3622:3865:3867:3868:3870:3872:3874:4321:5007:6119:10004:10400:10848:11026:11232:11658:11914:12043:12114:12297:12438:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:21080:21451:21627:30029:30030:30054:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:28,LUA_SUMMARY:none
X-HE-Tag: van62_44cf316c12c5a
X-Filterd-Recvd-Size: 1646
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf12.hostedemail.com (Postfix) with ESMTPA;
	Wed, 28 Aug 2019 02:47:52 +0000 (UTC)
Message-ID: <e8851ba7888c433dac2ffa5d80f3289cd05940a3.camel@perches.com>
Subject: Re: [PATCH v2 00/14] treewide: prefer __section from
 compiler_attributes.h
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, 
	miguel.ojeda.sandonis@gmail.com
Cc: sedat.dilek@gmail.com, will@kernel.org, jpoimboe@redhat.com, 
 naveen.n.rao@linux.vnet.ibm.com, davem@davemloft.net, paul.burton@mips.com,
  clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Date: Tue, 27 Aug 2019 19:47:51 -0700
In-Reply-To: <20190827204007.201890-1-ndesaulniers@google.com>
References: <20190827204007.201890-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.168 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Tue, 2019-08-27 at 13:39 -0700, Nick Desaulniers wrote:
> GCC unescapes escaped string section names while Clang does not. Because
> __section uses the `#` stringification operator for the section name, it
> doesn't need to be escaped.
> 
> This fixes an Oops observed in distro's that use systemd and not
> net.core.bpf_jit_enable=1, when their kernels are compiled with Clang.
> 
> Instead, we should:
> 1. Prefer __section(.section_name_no_quotes).
> 2. Only use __attribute__((__section(".section"))) when creating the

Please use __ before and after section

i.e. __attribute__((__section__("<section_name>")))


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e8851ba7888c433dac2ffa5d80f3289cd05940a3.camel%40perches.com.
