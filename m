Return-Path: <clang-built-linux+bncBDYJPJO25UGBBCON5HZQKGQEXUHDKWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B8F191A63
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 20:59:07 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id f14sf14469902pgj.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 12:59:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585079946; cv=pass;
        d=google.com; s=arc-20160816;
        b=kL19ZeK6yQIHLkHBYXsPlgfmf63gdltUoeDb8oJqbDtqv6zXJFQ2hpOqUTGhuuxxMq
         V9KuSzzjDv/S9wgEjKnNlzhCvsG8PZizTXA4fCtC5KywCMMVxT/Cz4C3vFTzIeaqhmlv
         1A2XJOuiSoldeDZ4fyuKia/o0/YMXP2vDtNHoCtR628TXC9vHWU6lZ5QIeHGNJzHxJrL
         71HZ+7Mt0df/IEVMIyr8SxNe9+uQ2VzR+8xW9oxAZaKzLJ9GmGoAMpCpNX6nKFXpUyZZ
         XuBdYT1lDiWEENQp9+g+tAaq78UwSD+nqNiWwWHDqnoGWMZ3yjBbrklFYE7VF4j4wvPi
         z/yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=L+zkf8ltlqUym+lQPrYE4SEfiPcuYtFGdXcOEzAjQL8=;
        b=nZh4/uaYWPdMfkYFt5NVTDuFoLhOoXSu93f8a8TI50Iyhh57IoIelL7CNh6mhL6jMa
         EHpgSDozDRLzPyL+OEYZ59lZrSWswIuxW5r6FHA33zw4HxA28hh2OT/uXmel2vS3c4fQ
         Ed2gGZXsKYNI7opZp+SUKbLzd4mvsHM1WYxWvyJwx2FUag/cc2+RpdyB77K/TmB4WgDR
         lnWzIev66j9tXhlM0pF3eaOA0Gw56CTNFeJDq64kZuKhQHWzc9nVkZmZN1B4xt72fSoO
         NTjyUgfYtkhCBo5MirSLoo4sEjHDdqMByy0Awfa901CXJppQ7MkO4uY0q0XQK9Op9XMt
         vW+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qYdy9ZyB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L+zkf8ltlqUym+lQPrYE4SEfiPcuYtFGdXcOEzAjQL8=;
        b=lYZ1cpAHzr4SSGI98kB1NLtYgEmqavqA9Q0H7FWlEw9sjwl76M+ceBcpK0SF2H9cPu
         vGHiOnPL/kkVv5HFFI6InbzVI6819UCt5InNFwZ0Iojgdoz22144OfDTAwjWH9XvsKF0
         QXGSmj014VGSd+4ZX0J8qGtrY5udDdAsChFcIKRX7pLymWBvggdzj+x5uCHDkAGkUwzM
         9MUo7o3DySTEsshKnTcSfeykgm79REVJ0rAkgMoKIyjvu8ZymBxoeWBzPwK/Adw142vI
         bqnsAyoUUkAOdRoTEVfFSssQiunDZqurd6cxHAjLhxnYHCtowaU3mQn3a7dmFla/EQDC
         GMIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L+zkf8ltlqUym+lQPrYE4SEfiPcuYtFGdXcOEzAjQL8=;
        b=jDIm2E7wQFG2R436Y/uqLJo4a4e8+uSrgzEMU2CCq6xo8h+EKSr0El7GLQXrJP8ndL
         UmikzWbB9quq1PdDRvWubGupetS2x98fehNB3vOz29rJFtSyPhahtTNbSBV3xBDPyEQe
         Pcr/IwukmbVBBZqx8NtD9LwMS8ZP8b6d8/mNOZ9Ja/G8/R+CT0yjKUmJHoucDaLq23QJ
         Uw+u/wr8hwxu7DEW2rTBZMaEAH7XNtSDYAqptkGMPS/VnqiXp6mANA6gsKbM37FOQ0q3
         JX065bBN65vhf06yGIlhvyREVuLbM2UULTdeKD7u5DLMkw+P9J6AjLrlIImkwsLicNs5
         EH6g==
X-Gm-Message-State: ANhLgQ3A0Xdj3CuLdmbJlrMfNkc3aGQNLVpUmvHcJV1AoYCoZyLyksFu
	1bfnUfkrrtRlZkY3m+pecHE=
X-Google-Smtp-Source: ADFU+vtn/mpE/y+QARgJuZaT2aDxlBHnLObSBnMU45QWRCVbak3+L9c4pFW2ntPr9PqX0l6nk+tc+g==
X-Received: by 2002:a17:90a:2149:: with SMTP id a67mr7402549pje.190.1585079946073;
        Tue, 24 Mar 2020 12:59:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7d6:: with SMTP id 205ls6457557pgh.7.gmail; Tue, 24 Mar
 2020 12:59:05 -0700 (PDT)
X-Received: by 2002:a63:b146:: with SMTP id g6mr29520427pgp.85.1585079945555;
        Tue, 24 Mar 2020 12:59:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585079945; cv=none;
        d=google.com; s=arc-20160816;
        b=WQPRh2MurQ+EnfXOf+2M2Ss/EMY2qFJ+L62BzVpitdb/1i8skqqKksVWRa9DTWC7Rc
         PmwSTp7KFlXvljgIlJxvLWGrViZnPl9BfPBnaSnINO4491UVU92oh2HS29J6tjVGzya+
         XwIyeY1nCX0L+V7IIn7uhkNjkZlfUqzGRGgKeSsrVBeBjgyDds6OmtqiJe7au/OkiY6k
         OrtfeW1VN0rCJLHTFq/DVax839GNh8D04RtSypUlGj+OR3TG2yfHdS1mUmtFPXlE6TIG
         oORTzqMOewUAd5kTyTPsuYmIml8neASPpyvAsJfoo72oYojc1YLfJykBRyILx3eCipN3
         ZMbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gcQRcAtEQg4rjglKJRL2d98Lwfwnni+3VOu5y4qk85w=;
        b=lJBWBzUaAa9UIRZfwleXWq176rhxv0d/Ztw/jr3Kh9YPjqQJv4oVnGzsBLQZkftOj0
         aQ4+eS3UF2xhrBSdvyiO/1wa1qKCcHkpu/1URgphdOFlgH/sX8MWd3kd1LFj1HTIos6H
         BA/6dC7B6MCQycTgYio+CdqlmFslQLfLsmSUKRV1T8r43UOCQU2V+8878qrwfquUYKSs
         zk3+Yroe9yXcKoReEBhC6A5Tkm5f6SflWk03+0m+O2rLNKsGHGStNtsc2MSGfaLCBfMA
         nTj10qU6Mx/qbQH3DbbxDl7r6eT5p18ZqJcFWxifbRuew4LfHKlMFOwS4ik4UJGJv8hU
         x7CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qYdy9ZyB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id s63si150847pjb.0.2020.03.24.12.59.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 12:59:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id ck23so6373pjb.4
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 12:59:05 -0700 (PDT)
X-Received: by 2002:a17:902:6bc8:: with SMTP id m8mr21730233plt.223.1585079945020;
 Tue, 24 Mar 2020 12:59:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200324161539.7538-1-masahiroy@kernel.org> <20200324161539.7538-3-masahiroy@kernel.org>
 <CAKwvOdkjiyyt8Ju2j2O4cm1sB34rb_FTgjCRzEiXM6KL4muO_w@mail.gmail.com>
In-Reply-To: <CAKwvOdkjiyyt8Ju2j2O4cm1sB34rb_FTgjCRzEiXM6KL4muO_w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 12:58:54 -0700
Message-ID: <CAKwvOdmWqAUhL5DRg9oQPXzFtogK-0Q-VZ=FWf=Cjm-RJgR4sw@mail.gmail.com>
Subject: Re: [PATCH 3/3] kbuild: remove AS variable
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, "David S . Miller" <davem@davemloft.net>, 
	Network Development <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qYdy9ZyB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Mar 24, 2020 at 12:38 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
> consistent in this regard (and not using the compiler as the driver),

Ah, the preprocessor; we need to preprocess the .S files, .s files are
fine (though we have .lds.S files that are not `-x
assembler-with-cpp`)

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmWqAUhL5DRg9oQPXzFtogK-0Q-VZ%3DFWf%3DCjm-RJgR4sw%40mail.gmail.com.
