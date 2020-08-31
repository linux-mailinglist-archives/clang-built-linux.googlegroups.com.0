Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDXQWT5AKGQETMYOFEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDBF257FEA
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 19:49:03 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id z85sf1975235vkd.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 Aug 2020 10:49:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598896142; cv=pass;
        d=google.com; s=arc-20160816;
        b=M0khzCjKMdD3btbACuHN67LjY9wk6atNzHcb1LPR7CZ/ajH+b5dSyED11jCO0wtJLG
         JPw5VmpWCAx0iDBqeICWRTeQHoJYv/fKnbashxu5sbvAdRZe1URgcrEXHDPxV3sIbmo1
         zOpoY8HkEftJ4RTHUKoUxsN1Z4lPFhW1yQ1LfC/zmKKTQ5n1+fCuU8QyC6U6nAoNiHNG
         7Sepvyl46islmpJLG4rHlAKDXWvQwLNPS05ESwTOQKtiue5I1doNRakpJ0lo1BPaSKJW
         DzIfHkeq7mObBP6RnsvABcYbhwog/osE5luFaSjDG/nusctYHge6vwuSs4DNBMj+NDes
         crIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=byST4NsdrVOWwY2Qw2chaWp3NK6acIBxdViAsB/RF20=;
        b=vQ521RGYMPE4DLE0SGgsj/8Lm1m44bY6UodncjuoNmV4ccwGLel6It8hp1kdp/nTqy
         UI8kTTSN/tTXPjmE7xxyOtIatbdzvcAZLTTSVAYJSoMjjodUSjE62gM5IsnuIvt1Sko0
         g3lBGF7klZnFXYvUj4GdITNaBAcQsvxRQY2zURKyY5KO/nx2SqHG5eUtoKmiFvoy1EMR
         16xQ3Yg6iTOOb5jG3smGEbisej1osxj9rk/+lwtUqHqxyT0UvX6+pL8KTt+dSpm8yLBF
         w7zO5pFGgBpFv2xb197uSiC/GMSl0HcvrS7XNQ1AImCYk9pIzQhPefAWWsv1CaO39GJg
         F97A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Blq7WUiy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=byST4NsdrVOWwY2Qw2chaWp3NK6acIBxdViAsB/RF20=;
        b=nTWZcv5i/VXAFCrqwVqh51cgKwBPmNNCAlmwAwNxg93c5OECLavl4N8Jy8OVdeWFp+
         m2kJWD6Fv7hzvftoIKDaYBLTKopLOH3Z/QU3vOwZhE4S89domJATr0YFbfsaxve5KlIV
         phQjXUl7S49FPPvoU145Ca767Ym2vmGypMpfb+tmyrOvNf7SjUHVaWGWAOucmK6snoIp
         Q0tgsZpODS7VLMWUy5wxIevF/zpXQWwGuzox4YLLxzjCmNZgkEp3+cF8/BN7YHREjIFG
         5z/aVcOLS77JCWAeEsVdX3kC84AatuVEfyc/0xF9yJtqNdv1rKqbu+T3J/1VZrWWVVDb
         7sbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=byST4NsdrVOWwY2Qw2chaWp3NK6acIBxdViAsB/RF20=;
        b=Ec6580JNmZXULxl5n10qRfbjpBsJtL/9ajpgs+IqcA2aA1cjBkMk3BbrTL4OWFZDKW
         Xqcj7OYg5O5G1Psy167y5CS55gRilnZB1fsxmY7iwk5chooCjeUKMM65ucwthCAQ6sb5
         JsXV4CiD3U7O+qebMVtXNqDhrSaxc9RJgJ97uQm53o4bxxFlKilkEJOofsrjydl3gBkZ
         3f8NM9LMGZpXyYKx5pl5K0SuKJR8gdZaBAGWLrjoe8nDLI42fHR9T1qz5J4FTGTsGn+j
         vGX7QdPrszo5X/A8BKbmhO8xHWhKJGZww8037CQWea0rUuqo77y7cOVB7L+QnStoz2EJ
         adFw==
X-Gm-Message-State: AOAM530mBPf/d27fS31IYnvoWNvh98tc+yGb+3cDT/+xEZSTXBydGbdn
	IdArY+QVSyLoLWvrg0hy9w4=
X-Google-Smtp-Source: ABdhPJzHdB5NlDQzYqRApRG/8yl/Xzk95S6VoX0lWcl9Ipf9WnZTpXjPRiIrCPZr5V7OqAH/x4lZ0w==
X-Received: by 2002:a67:d70c:: with SMTP id p12mr2232823vsj.144.1598896142759;
        Mon, 31 Aug 2020 10:49:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2bd7:: with SMTP id s23ls579212uar.8.gmail; Mon, 31 Aug
 2020 10:49:02 -0700 (PDT)
X-Received: by 2002:ab0:c4:: with SMTP id 62mr1941408uaj.134.1598896142418;
        Mon, 31 Aug 2020 10:49:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598896142; cv=none;
        d=google.com; s=arc-20160816;
        b=pkahwcyt253MJM3msgF2Dg+ipZVRq8EgQgnfEzAQ0ghCGEi1hLO/Isa6F4DiiuESAC
         V+NJ7NRea7itxXIvIQz2A5oBAww6/S4dOi/SlWrw3LzOpDeoAqhBKSfxCtfHOrcoD9Kc
         b3JXtr60Q7O+DjW8T4Cuub7DaegECzAaNgkEsHnOZ6MU3A5LE/kwDpz/diVFnY/7pymz
         UiS3EKdlDhKPNstC4zY6BAHUNDhhqpFq/rrAO8WFRxsapcA4Y8MColoe55suTpSoabfY
         G8HUISknzFYylmkBx3O8DbfT2NZVT+84JmAdTw1oDb/TbxlIqF31ir1ZIfe2mjjNJjEv
         4DaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=60DjW86vi7nEnF2m1S0V+BgpnMBj5NOWqgQoc/G62Ic=;
        b=NO0JicQT6b3+j3GZfHU/IzlTbEfSCIdxolTnISYXpUVxoM6aE/bJQ4y1U75pYWgtoJ
         lwTfeAUZlF0j25TKfKPLwDp5qNCFG1vziLtJEDu4xXR9YbHwXd4Y+UPzPUjSkG4ou5xc
         OeGyb6NeLTiEj466PO42uffpAWdRNmudf14ixv7+sHOUrbxPjD4qLvPg/P6MnBY75Kto
         1jmBk0hhBwCfoYwTu0Y9aWoV8yBF4i3iDgAHJet/tTpJFniYGL2sOiPHN9xQxX8cjZKu
         7wnS7jFSFlyzmFeG/TkPYJ/wh8NM2QwuqBMXq4EXrH3O6d4gI1SAbzsSBgWCI5P0tky9
         WrdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Blq7WUiy;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id x20si286834vko.5.2020.08.31.10.49.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Aug 2020 10:49:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id 31so998874pgy.13
        for <clang-built-linux@googlegroups.com>; Mon, 31 Aug 2020 10:49:02 -0700 (PDT)
X-Received: by 2002:a62:1514:: with SMTP id 20mr2181252pfv.62.1598896141381;
 Mon, 31 Aug 2020 10:49:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200829153515.3840-1-trix@redhat.com> <CAKwvOd=+X2AakX3kTYCvyug-MK_Y+atDbkDSRxA0pUfOatQ3mA@mail.gmail.com>
In-Reply-To: <CAKwvOd=+X2AakX3kTYCvyug-MK_Y+atDbkDSRxA0pUfOatQ3mA@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 31 Aug 2020 10:48:50 -0700
Message-ID: <CAKwvOdnn6eMqJsL=aJ8n5dWWoHjXUL0LBSyVwZPGCKpkBSLHXA@mail.gmail.com>
Subject: Re: [PATCH] soundwire: fix error handling
To: trix@redhat.com
Cc: Vinod Koul <vkoul@kernel.org>, yung-chuan.liao@linux.intel.com, 
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>, 
	Sanyog Kale <sanyog.r.kale@intel.com>, Nathan Chancellor <natechancellor@gmail.com>, shreyas.nc@intel.com, 
	alsa-devel@alsa-project.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Blq7WUiy;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Mon, Aug 31, 2020 at 10:47 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> On Sat, Aug 29, 2020 at 8:35 AM <trix@redhat.com> wrote:
> >
> > From: Tom Rix <trix@redhat.com>
> >
> > clang static analysis flags this problem

Also, Tom, please use ./scripts/get_maintainer.pl on your patches to
CC our mailing list; clang-built-linux@googlegroups.com.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnn6eMqJsL%3DaJ8n5dWWoHjXUL0LBSyVwZPGCKpkBSLHXA%40mail.gmail.com.
