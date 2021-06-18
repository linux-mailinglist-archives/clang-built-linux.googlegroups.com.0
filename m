Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBNVDWKDAMGQES73LY5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id D23C03ACAD3
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 14:29:42 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id v8-20020a0564023488b0290393873961f6sf3481550edc.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Jun 2021 05:29:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624019382; cv=pass;
        d=google.com; s=arc-20160816;
        b=AMsrfZj49cuUWET1Hn9WMo5johBvg8yTKyqjJ9iGqFXEzWtvwSoxLxqlJ1pzKIhgVO
         SGVL69liBXh+viDQjbrk3Da7A0GW1XthGaA++xU+WL4JNB3e+n/s/HbC+vNt5gyAUof6
         ftZC0CMcO0mHO/QcdLo1Pynv8ppDUCeHUPTrfkwmWmYTrU5lH13sV4bRBa9ldUjyl/NU
         qeVZ905Wv1jk6huzcV7JQOS1WeBeln+fphMVuRfo19tNK5/3a+3Pwvt3mUtlSYF1TGuG
         sgfbmAHHb9lbQDFWHzblDKeCaM133ACg8sFPT8tquon05EnPvm2IZ6yhDbqig30AjE6b
         J7Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=eG1R6ZyNaNnxOomgneoQ5quZmpfKHfPqSLx4EnZd6iQ=;
        b=ee3bS9OHwTN1Saz+/D3O++wlj/JaxrIw47VyKg2EQ4+Tzcv/eWucLy+a6C77E0jgbT
         Wc0YMcle1Mlix707mMZihmRPiEegEVdq6OqJMCv/7QmKj6E2kzsXQnfFClfxNyRydQHh
         dPFFGph5PPqkp7WeA7/6X6+rayYoE6onTWWq5nCMB5jWNUmC1bZyRxjpo+7fXtWyWV6q
         f/8yEo2kmJ3Dre7/sLrwGENV+6F2rYg1I2a8ofIn5NedKhJ6/5Xb/Rg5dlv1bAl0/maq
         7EZfwfyBVYyw1sHD2kuJgeMeIQj43ayrMXTr+FkA+QUctPiThyiCKsuWsuq+KrxlCO81
         Zi0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eG1R6ZyNaNnxOomgneoQ5quZmpfKHfPqSLx4EnZd6iQ=;
        b=eexZ5rd1hFodvd2jfVnWPqWSNo3GWYrELP8UjhL6By6jxzFe169ek7zREZbFsosAFk
         ILwrtP0cr0J4yl2H+ub5dZWtwLz5pqfnQi1LoTG0B5JwrABJRhMcjLEdTLK8T/lHN96x
         uYl/Y82favZPCPv0g86Gy2X6mel05TfDYTXfq7AsDzSmqqEEhSuAOztCuImVEeuxMpyI
         NTuqZeSTF6UeuPC29ONlfDWkrBUbkbLDPdzXodcYJlOxLGWQfe8w+Uu4V8ZCmJWwTj0G
         bfZvWqjQ/YzY5Rc/AiQIP7l+I4Th7qTwP+3eaF22nRvEXAkjF574jkLdgZ2O1WP1Sose
         +nJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eG1R6ZyNaNnxOomgneoQ5quZmpfKHfPqSLx4EnZd6iQ=;
        b=lO7qfBLnh6x7OtOY+YNc1M85iapaiX9qK1i0tsVFrCmIE+X9KrazxT/1e+iVc6HQ0z
         0WfFO8Q9kgmUTEg1gouonpjaoDWLVfglcoI4IlbwFTZwLnZprcanyCdf767mjVQpBKka
         hoJEF+2O6Mz3iteVnGu0Wj0Jq+vR9yuSDisG72vHbHhG8KJo6W8388aNrg0DimrET2z7
         st1aerIHegYBT1iA3F3ct2QwOg5cdgFqpLZV+lLmgZOOnoGnA6Z8P9ZYodmrIRUkJT+B
         BIufYhiOpiLy1CGvIO1AsqF11DvhErJYavDn6xJAfIGj6oqpnXlnCjrGcT/0mR77odtX
         TmlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aq9VDe0WxIqZE8xnxP8IT9DTgV2wLskn8/QRogytnlRRj/ht1
	wPJlBhD7ZXVNQNUdJgaKF6I=
X-Google-Smtp-Source: ABdhPJyHR3hkjA/TI72+yq5oh1qgV2oRoOd+kKWMxNJiZobAiGJOLffuBQAsETUSMuBgaiy1QR0n1g==
X-Received: by 2002:a17:907:831d:: with SMTP id mq29mr8861896ejc.509.1624019382584;
        Fri, 18 Jun 2021 05:29:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:58d6:: with SMTP id e22ls1176422ejs.7.gmail; Fri, 18
 Jun 2021 05:29:41 -0700 (PDT)
X-Received: by 2002:a17:907:7b9d:: with SMTP id ne29mr11111485ejc.167.1624019381729;
        Fri, 18 Jun 2021 05:29:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624019381; cv=none;
        d=google.com; s=arc-20160816;
        b=K74KH4TyL5fj1o2W6emserJupAGK9zLMnpSOCY63qZEzUhA+LXWmXnLAXetj/1DDVS
         VPI3N1tJg8rWuXInAoCSQpzHcnlp1xQO3fjdQZ2VxZ92a/KBEeCkKR3RAU0D+0bpxQhF
         Iz2ZmCkf2xRLEabELNYNfUcvwpomTl4qawDQ2bs7rfs8Kkt2szb0hUbAIIsiqOyu7urd
         HuwanRawGvimdYKeKNH/NBwPsJTdxgv6ByfDfIqEmqKukmn19CXbFKsShy/jRNzqrWb9
         yUtRv/au+WhZpQSLWymhU62eRqkPQMkRFXG54B2MSizxKAysA7r87nGZmXDW24ays2qM
         G8DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=HkNRSg/Opt3ZMNzuZVBfYPJUzdo+/ISHFJdklYqF6IM=;
        b=FZiXOHMz+0ilhWv6uBfYyWWxJFzxBueR/TDfNWiBGgC/MkVSAUObwfA7HPGlHdT4Oy
         RBKGMDivTjPuq/oLhL8T5luGGqPa5Y6sLGBqVgMlX3W4cJ+X+IyyPHOGRT1ch1o6S2I5
         fQcxv2wGZQkyXprn0wx2fspmp1GDOtKCnRNe+DlcJ5CeaydAKMc2E34dE1iDdmhh1txd
         g66o+jX4shMt+1sG9e4u1+Mle5TqDYr/CvF76scYMa2nu42Zsea5AFSGpznY4EOdr1a5
         KMOLnUiEE7piYN1saec+yyXEe1uCpewI59TyOewAsBJFobid/u3an4qAWW6ltaQtgvow
         0UtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id w2si481813edi.2.2021.06.18.05.29.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 05:29:41 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from mail-wr1-f49.google.com ([209.85.221.49]) by
 mrelayeu.kundenserver.de (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1Mv2tK-1l3LxV0tKC-00qyLj for <clang-built-linux@googlegroups.com>; Fri, 18
 Jun 2021 14:29:41 +0200
Received: by mail-wr1-f49.google.com with SMTP id n7so10607459wri.3
        for <clang-built-linux@googlegroups.com>; Fri, 18 Jun 2021 05:29:41 -0700 (PDT)
X-Received: by 2002:a5d:4050:: with SMTP id w16mr12289631wrp.99.1624019380918;
 Fri, 18 Jun 2021 05:29:40 -0700 (PDT)
MIME-Version: 1.0
References: <20210609142208.3085451-6-trix@redhat.com> <202106182017.Xg2OCNbw-lkp@intel.com>
In-Reply-To: <202106182017.Xg2OCNbw-lkp@intel.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 18 Jun 2021 14:27:29 +0200
X-Gmail-Original-Message-ID: <CAK8P3a1RAYBq_qv2mr_pPmVG8siwXF-GZrGOR90_CSBqMUEizQ@mail.gmail.com>
Message-ID: <CAK8P3a1RAYBq_qv2mr_pPmVG8siwXF-GZrGOR90_CSBqMUEizQ@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] fpga: lattice: reorganize to subdir layout
To: kernel test robot <lkp@intel.com>
Cc: Tom Rix <trix@redhat.com>, Moritz Fischer <mdf@kernel.org>, hao.wu@intel.com, 
	Michal Simek <michal.simek@xilinx.com>, gregkh <gregkh@linuxfoundation.org>, 
	nava.manne@xilinx.com, Dinh Nguyen <dinguyen@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>, Xu Yilun <yilun.xu@intel.com>, 
	fpacheco@redhat.com, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:q6CYLW5+gRkKa91FGZZdTZNMvI70DD/3pHjYDqU2sexsFRK/3qu
 aO4V5+4SCAezuPQqf/5KYvyWSxUocI+u5G+Zz/5/UmfeOoRdmHsX+1Uq9coA+9WPvNKUrlv
 qLT9zMeLmEGgY4B5/WjhzcDWibHNs9pgYy3i9hg+yFwknsD7YEoOTyiGoevsvLf2+iJWiOC
 qV8o/p9nZi/hAeiITVunQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bV086CdWeEI=:ni587bmkZHUxqxtZRMbsiO
 NTuct89XgQga8Ti+7FUs8BAs2q+JEprOVQ7H1F1zLoO6Ysb5cxmNxxg+xUxsfO4jrYr9XVHdO
 m5KviFnmtbmAkEJKkBESl7Kbl+9DI8YCGn9w/1ugWQWWhyOsZVJVa3+7sZzj1zbqLR08cC+YZ
 npOu57Fy6iwPNN09kn7dV6f5dTQn2W3z3LlJ799vsZ5aAALtCDvcGEkyibBiqJDy1y9KncjGg
 qM1JBZqdD9MI1FkxIsZWyYeijiWLG58sdQjds98F/WhH4y0IyudDnBgDb/NetSD/sEwzo7lyb
 /lu2HHpfKzSno+m+zm4zxlgFgLZW+pNSQumapdwWloH4uRKsy5/qhdw0RcZWRMsnIHzv0yzJ2
 hgbLYmt1wT2YIMOUCGQKlMfK/neXhxOqJsBakzZNizQ/XyHYFyTV4WLz3ZVlAS42Gl/f/q0ZC
 jBfetEX22m9XzZmd5ncFBG/Coda11T7zijdcoWWNbAKV6X8igGPgmR4RMmJ+HsWLFWfeQ3ncN
 eliaObUm9l1mx5PAB4fHFk=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
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

On Fri, Jun 18, 2021 at 2:25 PM kernel test robot <lkp@intel.com> wrote:
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/fpga/lattice/machxo2-spi.c:377:34: warning: unused variable 'of_match' [-Wunused-const-variable]
>    static const struct of_device_id of_match[] = {
>                                     ^
>    1 warning generated.

This is almost always the result of an 'of_match_ptr()' that should be
removed, I have not
checked this instance.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1RAYBq_qv2mr_pPmVG8siwXF-GZrGOR90_CSBqMUEizQ%40mail.gmail.com.
