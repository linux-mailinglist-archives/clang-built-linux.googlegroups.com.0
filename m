Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBMGRWL4AKGQEWW7XCAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7E921DFB8
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 20:32:16 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id c6sf18364590wru.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Jul 2020 11:32:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594665136; cv=pass;
        d=google.com; s=arc-20160816;
        b=tXtyP+wcTgeMMubWiZw23MmH1/j81OF8oe1Ak3xhjzSco7JIohWSjHMoNjvPp9RaRT
         94kJhaoWAMeHNSHClcLavSFsoTRzcUUJCDHLqLKPBP8UKRMsZjL4bBOLObuGJ9Bibzu6
         oDkgqPK/QNChNBSwyRL+AULie6rFLJouBteotNq/wEx0AbrjQ7xzsaHfiiij8Xu5e2Pf
         xoC36lNjNn88rdXiRCDACbDIl/Kl6OiPMuVofRBUec2O7uS4wwpKQd2oUMyGuLbk8Ah0
         DThkNjIk5cwKO4uuUzioyWmZUlHShB7LtCoRKIs9Hno3XXwKBnqmaSaav2GamgdtQgfk
         bNRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ONM9KeENhMt6dHG//iDdR5PhCMW0cSUHirSUYJqCFo8=;
        b=cdz3jLL5iXRmlf1CV0TNinre8Sc3s1ixQ5EvKNHXPTAwXghnmSKg1Urx8V0fJ4ZOI9
         gLsuIkuySivrBL27cOYIFwxAeYDj1OoX6eGCxq3Q1l5qfSTS8HqNDupCK4zrhLThn9U6
         0atZE0yYcbQ+htsRocaRAQ6GH21SOfXDtEM8f6wmvNNWI3xO6Ru6GCUaKA9XhHRlhqNS
         Mm2J8u9B+Zp+8VO4f2DGF7E/wQCrjb+tfN8umskZyTdeDezRTbfsshLKZWU8pUXU9OHY
         JOnCVigTmlVCxnkP+UypXDI5KPZvA3awYCSJkkgoTERfAUbY7fXWcdXq/GoIThuePGxX
         r0nA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ONM9KeENhMt6dHG//iDdR5PhCMW0cSUHirSUYJqCFo8=;
        b=USttq0QrO/ivRp0JDp0j1yvn/CpzSL6oJPh48CGgfFZeDHLQ9rr7fV5tqSge/MmqyQ
         4wC3iSwsgM8JB/rzQxFrS8100qyqu/upbR2MJPH2jEGk3DOdfuXDsHKtRjNyFZ69Wq2a
         yOz9eEYNjEASPbKQaA9dAXipRAMosA8UZYvFyQ0tmeMX/72ePw/noetB6Ol6p91uVJGX
         qIHHq5yWVuEP0tBbL5ZX3bI25FB3CUzejALlYRzNU1m/Cwe/2cFIuQUwjOt2Jnpb9slh
         ioyOqFcofWFsu9nrKvNRden063pOni45OH8VWDay4lVzkOhwskuBCxKTvoRK5N5X3Gj1
         JXFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ONM9KeENhMt6dHG//iDdR5PhCMW0cSUHirSUYJqCFo8=;
        b=dOjzwKB2IbVjyAhh/AXS/5wgkzTjpvc0fGG5CAvaDmHib0lJ+s5F0crYwnKPWldG2J
         raWSY0+gBacVpBFjNaTOCw+XBbQAcASeyxTh5+Ul70F9uOESoX2/RY3bkMwYqhoz6gCM
         w9FhWalKaBIaE+2Qu7pR7XtJzc5/O/WpxkLC3VjxtChfMUO1pygWkGkKc3FL6IkikCxC
         Su42JeAOcjwpvFuzjggGUcfQuimMscZWvrV08Cb50DG2+N5hAJTBXChqDPcD9n4s5qS4
         X/J/E18mbmRR6/ASq8zgs/RBvQdYj8AifMgsEFf7yytxZn05cmeubNfKh1GCo4k0g8o4
         uuVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530E0c1Snorx+kJEGjmEWZlU1EuLizHhSeNzfByTgzjgF2Aqw2Kk
	I8wjzSp3r2RUI4sWq2KsYek=
X-Google-Smtp-Source: ABdhPJx6UMVgMERvJV6SWV/4Zr1y01F8e+T9IFcbbf2LOjU/3CFX3cxmpc2DVXLlvZ0riWG/AGzNkw==
X-Received: by 2002:a05:6000:d0:: with SMTP id q16mr846930wrx.166.1594665136549;
        Mon, 13 Jul 2020 11:32:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1fc9:: with SMTP id f192ls171999wmf.1.gmail; Mon, 13 Jul
 2020 11:32:16 -0700 (PDT)
X-Received: by 2002:a7b:cb46:: with SMTP id v6mr724060wmj.73.1594665136033;
        Mon, 13 Jul 2020 11:32:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594665136; cv=none;
        d=google.com; s=arc-20160816;
        b=kIy+GwoVBpwNToKKDzTHfXKYjY7P8ch2ylvksVDsiJjHwUcGjLWwMhprEteDq32KB/
         z90I/8XzP9iP6UlTn8NEKhTArs/8iNV9BOSN3MPhowJJ29hEXDWw7ge2tm3vRgH+VA+x
         8PNwI/y5BloQtp6iYRpJtcXrNSF/Q0ZnQ+OOcIlZuCAwlR/DuMqM5T3eSFWIDqT9yA6p
         xC0fuwwULpgLTRZ3OPQF148QGCd9m3djOE26hvtI+PVDYJenFg07ZkZZbRPyxXvHP+dQ
         UKXCiaEmwhif10vs+0vvPyDHq8WxAdshmwi9ZuN5wm1XIZOL2e/oazgNx4pieciARgeG
         RAwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=7geRhq+VnyzjVJNe6ktgZWmC1ACcqWzWSof218aeX0A=;
        b=azSF3rnfpOllGgSrBt3Rwb1D1h2oVPwjq46nPa1NEhR7mzyubjFcG0vrbwUzGMDrhO
         fMBKBlLf1j/8GxEi2B+xFrkeQYyQ4lJpAuzMttOJiir1rn7OscVuYGbYku5oy7mIpaO+
         04CAB6G2enlhsF3Thp2srlmOrjg2BmH4tSLlZOLsvP9kKownyruire7/D7CecXQZOC9V
         3Ail+Dt+l/07TfhCuFUiko6BoP6u0yYFGBUTb5Z1CtQOKKIU7rqNhwAaPisXzjD5/BGG
         ncRI+5IDI+3Ga8IYlksVadQMhSIOrUPZjsY37apM/UoB3M6f6xKMzYWzI2XYf0aeM/zG
         oj6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id s18si22573wme.2.2020.07.13.11.32.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 11:32:16 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from mail-qt1-f182.google.com ([209.85.160.182]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MysBI-1kqkRR22Fu-00vzMB for <clang-built-linux@googlegroups.com>; Mon, 13
 Jul 2020 20:32:15 +0200
Received: by mail-qt1-f182.google.com with SMTP id j10so10728228qtq.11
        for <clang-built-linux@googlegroups.com>; Mon, 13 Jul 2020 11:32:15 -0700 (PDT)
X-Received: by 2002:ac8:7587:: with SMTP id s7mr731307qtq.304.1594665134302;
 Mon, 13 Jul 2020 11:32:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOd=QUw9dU9HQc0TBfBQEePsFaM_0tVxqqZnprDHsDfPgfw@mail.gmail.com>
In-Reply-To: <CAKwvOd=QUw9dU9HQc0TBfBQEePsFaM_0tVxqqZnprDHsDfPgfw@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 13 Jul 2020 20:31:58 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0fAt-Uwbs-xBYW1AFBnuos2Op5idgo_deuzrzenexJDQ@mail.gmail.com>
Message-ID: <CAK8P3a0fAt-Uwbs-xBYW1AFBnuos2Op5idgo_deuzrzenexJDQ@mail.gmail.com>
Subject: Re: Plumbers+kernel.org llvm binaries
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:0QEMaNdPn1GdCvzH9zFL0NIxONl0wUcEWx/4zm0Kh9H8VD1pw5H
 14/s+4D1NJm3fbPIhBDsismbiAVCTBhzbAH1pSvUExDHGd2zp8WaRBs+4RMctUEu6oW2U0G
 oa8GBrzB7ptBToJOXcm5oXgvSuta9ECrnuGessoul8bJF88djflx/zpALo2s8ev3K7UmEMh
 xenVgYjTWh+ZFHy4kdd+Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:m6lDvyGxHl8=:HV6faeRMT9cjbNrOHuBOIE
 ApBvCILywuNu/wRpk+AclMMzTvB5kdtj5JCSrSQ1M2QZ6FcPfS11ZH027yopcpB6J3WuW7tQx
 1YIoH+zrSlFQaYZFy1/0UpruHwohp50dvOHoufGFOkYi+kwK3zk4HpQNwlqftLfTJByx7F46i
 QvuxFz3fe1RI2yREpD5hz4z7gHMhMQliP/3GWNkum8eIx9n7/XXoGhz3eKoTt0tsOqPLkzd8f
 dks+AgJxLVx5/oOWgSc7DpOONtQ6cONtkcHAqcgyjRzhaeyLa2bulQfC6JsjkflbnUqZFS/Z1
 cGRP7MfkVF/pQvHxwbd2aXu+/FTrsf+CGECtwfQRSc/8J5M3dCgZKr78jFKqQhla+a5wbMWR+
 VazIn42u0AN8/khibsWd1J6YqjPQP7HxB7oL1zTeGSDF1i5PQDsEUHfuYipEBl3jb41hjcoej
 evGFSf0BPA2M+uPGxc0oPO4+8Y4+5B6NGXUQkrLJ2ovUTI4Q4RBWY/xRdI8DkkvhFOV6/6Jp+
 lL2vNo0q6jV1WnffMVwdxZt3DTV/DXDZqX3+L3/hB3Qv5+FqH2Hv21oMXMRbkCyT1n9YJspzZ
 dh422tt/wXw6SDuLO+/nBQ9BNfcBv4XhhSmEjiJ8L5/yHmZEhw0D5h/IGYBAJp3tviyEN7o3A
 HHvZHJxYurvcXsJYqZy4bPR28saHcZ3IJPjBBfneAmscVzo92dq9UGe8CzvY3ecy4AcbSzNqc
 lphZ9HhUE4idDYNkcDwdMUSvmmlqdUH3W39wCFqIK02YZAzdCgAcPyy1WMqaU+/WRpGZcSrAV
 7HCf3EfHvXtCkofO2ghDhmTi2T3nvDC8DIoeUCqewYDgsTB+PXel8vM3DaeOD+QLFgj+JrTmk
 gN8wtQ5BZvksHmTQNbllnHDBEI9w5ayyyHg3JEyVunvfU/KFIIdKeOHJ3UN1g40tOdely4GIk
 cBc/J7lfY1OvKSXPj2bnDsJvUSDTUG8/tgc1hoxm4eP0IBdBY3Wvs
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
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

On Mon, Jul 13, 2020 at 6:36 PM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> Hi Arnd,
> Were you planning on attending Linux plumbers conf this year?
>
> I'm working on a proposal for an LLVM micro conf.  I think it would be
> interesting to carve out time to talk more about kernel.org binaries.
> In particular, I think Nathan's tc-build
> (https://github.com/ClangBuiltLinux/tc-build) is in the best shape as
> something that we could work on together.  The additional constraints
> around static linking is something we could work on.
>
> If we carved out time to discuss this idea more at plumbers, would you
> be interested in attending?

Yes, I'll be there. I already rsvp'd for three microconferences now including
the one I am organizing (architecture maintainer meeting), so I might
be double-booked on some sessions.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0fAt-Uwbs-xBYW1AFBnuos2Op5idgo_deuzrzenexJDQ%40mail.gmail.com.
