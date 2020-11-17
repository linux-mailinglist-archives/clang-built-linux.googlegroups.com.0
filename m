Return-Path: <clang-built-linux+bncBDYJPJO25UGBBJ452H6QKGQE4NFRUHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8F82B7192
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 23:28:56 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id j17sf74564ots.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 14:28:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605652135; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tpxbud76SmVnmV0SlBMYmuFqPWydH6uTE7oDBEcro7xLk5pPE2KieaCKvvtDJIZHnw
         TkeIXEl3xTRklorupVuP0dGNujZaUdH+LZGqnrnXN0jJ9LH9CX+XzrQmkh95GGctbPzV
         hwvGuNBgoNH5L6XdHSy0jQsIi6iXN3vXDMkZBZYcPexyXk/61LBmr5rN0BhKd4QlaTrb
         oS4+8o1gSveMqjEZB71dHtXZ2+SmNkBLtGqJesiiSWnoiqUviju3rBLA6cCNPTVMkyr1
         s+6/9+bd14WhuftOGsipO3LauCsmqOJUl+XMA63mUWLo1OtsU8bKE99EVS8QAes6Hqt6
         NH+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=MK7+bkzikQbEWRlVUzdWqWbYsg/x+trWjVNhntF7v24=;
        b=EJy4dnr7NRykIzoU5ZVk+rc3nmqQPKU81D/TOHEdJR8RNHIGgBAhiomOLvfhKIc58h
         t5dghtydRFd/ZvDgmIFtya3IG5jkTOJXQfyKAb4nnp0qaZ+G8Jp8u2AIprOoS54qUKLh
         lW1DZ/UL3z5N21b+meHYStfERtaOukOwpTW7TfLzGpG0OOGf8xAedvn+cAiYaE2rGEu7
         ziERt4VQu7j0Cgkde2912LkzeBGS6vERmFEqW8uujh84g6GIr7CE4GeBKQuTGvSnIna3
         uwqAjBxg2Ky2y9oAex4WyDDgwcpEvFTdRv5345nzeunRruYgp3jQ2oIuCPYqmRI00X9Y
         nE4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oxyyGnn2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MK7+bkzikQbEWRlVUzdWqWbYsg/x+trWjVNhntF7v24=;
        b=P5rxyMjPzcaRe2J8z/REiEz7frRta/ZFz+SAkkv+OHzKkl865O5nLuepiZ0n/uE3t2
         cH97d6rmOpsDBC/YyqcjtM9j09jtYmLUY63Pejr52918JNFCF/cw8g4PzsBZN+mc24B1
         VhMPfUDSUfgBwKTCCbGXpHk+XqceCFSDzakx2DBGXhogqE/OEVLm3CROJulG7UIIdfTT
         xK/HRCl0zftoMZ9CgnT0g9Jy87a9Ue32YARbH/yWNlTzntdeBBWlTlwFkfMpI5aDAYRC
         94m39tvZ1GVaJJuiLUy8PJtjOF6TuiPJQuHE5HcOto7Ukl5XM1scDTGZLpYVHSYwMIRD
         v+ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MK7+bkzikQbEWRlVUzdWqWbYsg/x+trWjVNhntF7v24=;
        b=qU+lCyh5uQBN+9k893UoJYAmcBbkoIo4gw7lKBnf/lA07csz1ST7Kvm0PZurr1/cfQ
         RKxUFTeTe/Wing7IvnkiDaBHfog+7BbyHvpID+VMku+Cy1DBzRblmDJ2ALhTZjHp0xwT
         YaULB6XnnOvV4qa3PV5o0e3Fh1J1QCtcQ4pcHfl440G/cPkPZMKeAgzziDVZcvRgyBOI
         +6RejytW9hifjwaPyYtsJp5bgb+bMaLRJ0cOfme1salrPR7W6MEdWriCj6vwf6huHAYT
         DEKdJF+vZqTZq8ulRy19yllm5aRQLf4bzU1TI444d0KbRfM1L71ZJ9VnqZiioXafrKfM
         SENA==
X-Gm-Message-State: AOAM531YvFb/FxJot/jPb5yQI22Vp9U3HpwKSG3r+JRY6OQdG9YAPqKK
	kZjmWPud/V0QKYd72YMvpPo=
X-Google-Smtp-Source: ABdhPJwnbwPG4iv0TWhI9v4dXcVoEaokWIofAHrEgm621g8oMrqR7EK6VI7mkvJ7J+d51UEDYU4/3Q==
X-Received: by 2002:aca:f003:: with SMTP id o3mr858476oih.64.1605652135236;
        Tue, 17 Nov 2020 14:28:55 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:66cd:: with SMTP id t13ls4538330otm.8.gmail; Tue, 17 Nov
 2020 14:28:54 -0800 (PST)
X-Received: by 2002:a9d:6e82:: with SMTP id a2mr4521225otr.274.1605652134912;
        Tue, 17 Nov 2020 14:28:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605652134; cv=none;
        d=google.com; s=arc-20160816;
        b=vQAYJ1rrCQDdi7Q0xB2ZD/9wNHig3TSKNyM1ky4dpVWTr6Mfi0rQwle7u4naDqekBt
         uD0KACGVLpas37YR70cJoEeAloMIjnRt6NNHxT0s++omeqRYyO1PEIg4HD3+0V4xQeIj
         fCBW8j5QNWfapJcIb+Kwl4fJ+xPJ1k3vH5VwKJl/vsI7Bk+Iue3YBbjcYxWGzRyTMiUC
         iXzs8TbvDXiOer76bakjAIx3hb75yZa3DPoI5SnfGUNqa4/4LXNyE3gZlaR1d3LH1QXp
         zeUiimp0g5IKR36GHJik+f6oF/hCgKCc/tA7U2hYPM3pfjjCQvcE/ZMkqajSzoyyUnTA
         Y8Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l+l6bPNdAyGzxXdbN4WyqDuDuPAZPzRdy+08/xBki4g=;
        b=VRVOl3XDcX+MX6h4oGvEGJr7O+WAHG4zJecPYpIFzyAGpZxw3gL1nZ1YsUhmmvZCku
         A7sDGSx3uvjFi5s444y790GTDwQ6apQCn4MgVUNq7xVJlQw/xL+u+L/FzO+5zcSI3cPh
         5tGHEZGnlrieE3aD8bfR74+7+h/USC55ET46ApB+xsAKm/1mf/JUWKWsff+UgRo1Koe6
         JCEvhRdfUiZb5Q1320lpDR7oObSq/sQY2yRM3ckkRGMpI1dGxs3s/ba0L/wQG10JVz89
         HYnNmEBg5KHjCLar134gsT0Ql25Vb+UsNsmMuaLgjAgcctiDmWh/JuH2qFdfFpqbTtJl
         PWdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=oxyyGnn2;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id i23si1554760oto.5.2020.11.17.14.28.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Nov 2020 14:28:54 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id 5so4281396plj.8
        for <clang-built-linux@googlegroups.com>; Tue, 17 Nov 2020 14:28:54 -0800 (PST)
X-Received: by 2002:a17:902:e901:b029:d8:e727:2595 with SMTP id
 k1-20020a170902e901b02900d8e7272595mr1537952pld.56.1605652134074; Tue, 17 Nov
 2020 14:28:54 -0800 (PST)
MIME-Version: 1.0
References: <20201116043532.4032932-1-ndesaulniers@google.com>
 <20201116043532.4032932-3-ndesaulniers@google.com> <20201117030214.GB1340689@ubuntu-m3-large-x86>
 <CAKwvOdk_sphJGQarEWJLzGZWkdzO9dqmcRmys3Retw3vn2Fwag@mail.gmail.com> <20201117221629.GA4679@embeddedor>
In-Reply-To: <20201117221629.GA4679@embeddedor>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 17 Nov 2020 14:28:43 -0800
Message-ID: <CAKwvOdmNW3iynqi_+2c1P-6Prq1a8iVufoaZh2NAbsaBLeZZ4Q@mail.gmail.com>
Subject: Re: [PATCH 2/3] Revert "lib: Revert use of fallthrough pseudo-keyword
 in lib/"
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Nathan Chancellor <natechancellor@gmail.com>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=oxyyGnn2;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Tue, Nov 17, 2020 at 2:16 PM Gustavo A. R. Silva
<gustavoars@kernel.org> wrote:
>
> I'm happy to take this series in my tree.  I'm planing to send a
> pull-request for -rc5 with more related changes. So, I can include
> this in the same PR.
>
> In the meantime I'll add this to my testing tree, so it can be
> build-tested by the 0-day folks. :)

SGTM, and thank you.  I'm sure you saw the existing warning about
indentation.  Do we want to modify the revert patch, or put another
patch on top?

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmNW3iynqi_%2B2c1P-6Prq1a8iVufoaZh2NAbsaBLeZZ4Q%40mail.gmail.com.
