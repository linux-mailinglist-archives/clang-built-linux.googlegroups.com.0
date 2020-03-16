Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQX4X7ZQKGQEZCF3OFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC301875A0
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 23:31:31 +0100 (CET)
Received: by mail-pf1-x43c.google.com with SMTP id o5sf8564184pfp.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 15:31:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584397890; cv=pass;
        d=google.com; s=arc-20160816;
        b=b+vcQAURlW+qxjq6tkQSHZe+w7lpZtD8j29wg6ydcXl5yCZmqwVZRvQwRlRywfHXA7
         oG1UCcTEJhVVEoXtZ0VKlSacN0QMRu0z4hjuQ3+m7yAJLPDIbS1nB47mE/EQOG6s9mwY
         OLfEq2oE4drOK45AbvtTB0Su59EN9BowNepQg4EQ/SoLoYC697n+S3f38784CpEIqj0p
         BWuRbW2jineLeFVJiUbqIwM6iiMZQsR7TT+g+eHp93CjN1wYTQLp0+DXWF9dcgKIftI3
         D0ngzGAVpN2ef9EJH6pC1gGEWqnNesoDASybxMaemXWr28ryaheNEITQDINJtPMhf9Xg
         IUPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=o73TvaZAEUbbpAsSv7OXW7hWxZaYckPklWTDcPfaVfg=;
        b=UGwozTOcMEmPYjdg9sVVew0WKHkQbsNpII3T/gbasLUepLAu9OkNJuidhoCjU5LCOr
         KtmEMhpJMQvNBuAuw4q3KakTrsGulvr+/maQe4LXJF+3oImz31StDcXKrhqTwAilQpUx
         O7E6ihIpWBUURXmRfK5b1B1ad3NQcPb7CoEw89jBKnaShlpxzAiA8QjAUGnNJzWfFlqq
         xXuXT/QlIOPXEFB6rXwgiW+PSGSnPzEsnX9xg1fEMvc4iFFDvAP+BKhmwVAZDdTdEmrm
         5E6l8AKrr1gqZ/7Mrt9WhimalwTy19HzAp9l0WfOLnhezCQSPl6JREraS4TiXNsfS928
         Q8Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="O3Mnuc/v";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o73TvaZAEUbbpAsSv7OXW7hWxZaYckPklWTDcPfaVfg=;
        b=PlBquQZlhAsb+xVVEvb25VS20SS2CUSPgEqcOJpddtkWZTAfVjyrEhKGFocCpEGrj2
         rqQaJKuoSkPdN5pKKRSJt46tF8+k/unWafi4R9qyJYeNgXcrU1u8wWvw3VUgwFbfpHA9
         /xSLrtCJPuOjlS1pdvQHzeh7LfJcYCTdbV6t+3qTT2zuy2wc3hk70Fya8vczeSu2Py0l
         0aHtuHta5wbENMDRjizNl6p649cI/7ema9F5DiPIjvt/ZttRgD44wQ41m+4DJBH4DXDB
         aunOQrcQIfOobydevJertTsadmYKU9miQLVvIgzk8wvlcuHKD4WhQIS2OVhTKbvD61+5
         1Dig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o73TvaZAEUbbpAsSv7OXW7hWxZaYckPklWTDcPfaVfg=;
        b=ZH+jyy4+5MtnhW9Ed4bdYVtE/vdpbqyzGUth2yQCtuq+DXOgHIkZJD8KGfi8o7K7C7
         Z9BN1j6v9NSlMLSeVYv6aFAFM4kEqceNiwJ3nO9OD02x7ADL/Jc9GKJPobPZMrmhWuB5
         Hhg7r2tuAcgbCJApz3egQL2trbcJqzonxgcuQCA0a2HBV4KNJ3xzcvmAL76BezFgPUNU
         h2+Q4z7QrREnGfAi2M2wneF22jErFU5YfS1zCy2gX9kTgcCKzPDKI480i/K8p4i2KLrm
         SWGDgoyM8tLQEH+sQ6Fug1lx1Don5uXJevFO3qYPv90nArMZsX7BYFZOI5yOGc0jve4W
         rZyw==
X-Gm-Message-State: ANhLgQ2sGxus4EEKMiJhB6C7/FaHoRTj8sBpSr645wwQ7gxG7AsMnwPw
	MZYldlG3l/nDkgdufkwbi1s=
X-Google-Smtp-Source: ADFU+vsSn8NijnbBmrmKG2jO2j3DgLoUOZqHSynwtrK7n/x0u+RSdjYIuDm80UOieXl8EF71PILMlA==
X-Received: by 2002:a63:cb4a:: with SMTP id m10mr1967798pgi.259.1584397890176;
        Mon, 16 Mar 2020 15:31:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8597:: with SMTP id w23ls9404473pfn.8.gmail; Mon, 16 Mar
 2020 15:31:29 -0700 (PDT)
X-Received: by 2002:a62:447:: with SMTP id 68mr1883822pfe.174.1584397889631;
        Mon, 16 Mar 2020 15:31:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584397889; cv=none;
        d=google.com; s=arc-20160816;
        b=KI4IUTlh+BklMHubB1vNa+rg/QaR6Ti+xg81GV6Y4VCXrVH6lkx2twC8EkPfBbGKdg
         FGv74Szwz+HnZYYaMyaa+hx59i48oBYzIB//06KI+ruTDbNwlqboCsSsI/Vz08nfDgaN
         GwM6jA616uQ/WpxDH7mEWXQSxYrmfap0bxPThr6BedcpYC+bgW11kRyQlAN08ztw/f3z
         Nvwu6qcHg1nSk1iFr9pNh9vZhUkdv1iWs6aIwqZf2mCa24IWbhOjzHYVIONHF7WzU0Oz
         mF9xY9/lgpCCevjKgUZT2W3huGPLG1TN8Ucbwl9XRUzTAugmWiPfC7vZJawTSDcy3+Oq
         X0mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SqNhlA0LodNsNYph3+Tu9/zrmLTegMWpdjT7+WzkntQ=;
        b=oSvGfK7lRq8RQTnjVkG/lIAIBViFIA9ozKgGq8rZD/GlwMYAH3CRWV9e0ZXkYwNEn1
         U1bWobmzrUXawY14Ott1GNynsx28PZezgQZaLsoJ4s8MI9WdpBXcySTfIJyM2pxcktdq
         DkWpHjKiRG9ystg6aTxJpue/ZuysM2kKQJNJrFels8E5FmAY7vGODMTfyRtwJ0bvUFQ5
         9aNY6SbkXBzGMkj9bvTvIj+jimUuF9vyB7TDcPDJBXides9f2Qhwrg3SsY+J0fziOQrs
         9D2mbaWPx1ahKv8wB2nNKIELrffxigMGaM7RhfbhyhrVwx8E00e6T4WGo+zE0xAGu5M5
         Wwvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="O3Mnuc/v";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id h10si92612pju.1.2020.03.16.15.31.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 15:31:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id z72so713530pgz.3
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 15:31:28 -0700 (PDT)
X-Received: by 2002:a63:4453:: with SMTP id t19mr1858142pgk.381.1584397887913;
 Mon, 16 Mar 2020 15:31:27 -0700 (PDT)
MIME-Version: 1.0
References: <202003170630.NGJUYTfo%lkp@intel.com>
In-Reply-To: <202003170630.NGJUYTfo%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 16 Mar 2020 15:31:16 -0700
Message-ID: <CAKwvOdmOF4LGcZLS8wRdsF3bbp9JvBoGWEO+4fj+bzz4zOauZw@mail.gmail.com>
Subject: Re: [linux-next:master 9025/9312] drivers/soc/qcom/pdr_interface.c:316:2:
 warning: variable 'found' is used uninitialized whenever 'for' loop exits
 because its condition is false
To: kbuild test robot <lkp@intel.com>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>, kbuild-all@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="O3Mnuc/v";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

A patch has just been submitted for this, please ignore the report:
https://github.com/ClangBuiltLinux/linux/issues/933

On Mon, Mar 16, 2020 at 3:28 PM kbuild test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   8548fd2f20ed19b0e8c0585b71fdfde1ae00ae3c
> commit: d538b863da31a4070276cebcd490a8bb45c4a45a [9025/9312] Merge remote-tracking branch 'qcom/for-next'
> config: arm64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 14a1b80e044aac1947c891525cf30521be0a79b7)
> reproduce:
>         # FIXME the reproduce steps for clang is not ready yet
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/soc/qcom/pdr_interface.c:316:2: warning: variable 'found' is used uninitialized whenever 'for' loop exits because its condition is false [-Wsometimes-uninitialized]
>            list_for_each_entry(pds, &pdr->lookups, node) {
>            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/list.h:602:7: note: expanded from macro 'list_for_each_entry'
>                 &pos->member != (head);                                    \
>                 ^~~~~~~~~~~~~~~~~~~~~~
>    drivers/soc/qcom/pdr_interface.c:325:7: note: uninitialized use occurs here
>            if (!found)
>                 ^~~~~
>    drivers/soc/qcom/pdr_interface.c:316:2: note: remove the condition if it is always true
>            list_for_each_entry(pds, &pdr->lookups, node) {
>            ^
>    include/linux/list.h:602:7: note: expanded from macro 'list_for_each_entry'
>                 &pos->member != (head);                                    \
>                 ^
>    drivers/soc/qcom/pdr_interface.c:309:12: note: initialize the variable 'found' to silence this warning
>            bool found;
>                      ^
>                       = 0
>    1 warning generated.
>
> vim +316 drivers/soc/qcom/pdr_interface.c
>
> fbe639b44a82755 Sibi Sankar 2020-03-12  299
> fbe639b44a82755 Sibi Sankar 2020-03-12  300  static void pdr_indication_cb(struct qmi_handle *qmi,
> fbe639b44a82755 Sibi Sankar 2020-03-12  301                           struct sockaddr_qrtr *sq,
> fbe639b44a82755 Sibi Sankar 2020-03-12  302                           struct qmi_txn *txn, const void *data)
> fbe639b44a82755 Sibi Sankar 2020-03-12  303  {
> fbe639b44a82755 Sibi Sankar 2020-03-12  304     struct pdr_handle *pdr = container_of(qmi, struct pdr_handle,
> fbe639b44a82755 Sibi Sankar 2020-03-12  305                                           notifier_hdl);
> fbe639b44a82755 Sibi Sankar 2020-03-12  306     const struct servreg_state_updated_ind *ind_msg = data;
> fbe639b44a82755 Sibi Sankar 2020-03-12  307     struct pdr_list_node *ind;
> fbe639b44a82755 Sibi Sankar 2020-03-12  308     struct pdr_service *pds;
> fbe639b44a82755 Sibi Sankar 2020-03-12  309     bool found;
> fbe639b44a82755 Sibi Sankar 2020-03-12  310
> fbe639b44a82755 Sibi Sankar 2020-03-12  311     if (!ind_msg || !ind_msg->service_path[0] ||
> fbe639b44a82755 Sibi Sankar 2020-03-12  312         strlen(ind_msg->service_path) > SERVREG_NAME_LENGTH)
> fbe639b44a82755 Sibi Sankar 2020-03-12  313             return;
> fbe639b44a82755 Sibi Sankar 2020-03-12  314
> fbe639b44a82755 Sibi Sankar 2020-03-12  315     mutex_lock(&pdr->list_lock);
> fbe639b44a82755 Sibi Sankar 2020-03-12 @316     list_for_each_entry(pds, &pdr->lookups, node) {
> fbe639b44a82755 Sibi Sankar 2020-03-12  317             if (strcmp(pds->service_path, ind_msg->service_path))
> fbe639b44a82755 Sibi Sankar 2020-03-12  318                     continue;
> fbe639b44a82755 Sibi Sankar 2020-03-12  319
> fbe639b44a82755 Sibi Sankar 2020-03-12  320             found = true;
> fbe639b44a82755 Sibi Sankar 2020-03-12  321             break;
> fbe639b44a82755 Sibi Sankar 2020-03-12  322     }
> fbe639b44a82755 Sibi Sankar 2020-03-12  323     mutex_unlock(&pdr->list_lock);
> fbe639b44a82755 Sibi Sankar 2020-03-12  324
> fbe639b44a82755 Sibi Sankar 2020-03-12  325     if (!found)
> fbe639b44a82755 Sibi Sankar 2020-03-12  326             return;
> fbe639b44a82755 Sibi Sankar 2020-03-12  327
> fbe639b44a82755 Sibi Sankar 2020-03-12  328     pr_info("PDR: Indication received from %s, state: 0x%x, trans-id: %d\n",
> fbe639b44a82755 Sibi Sankar 2020-03-12  329             ind_msg->service_path, ind_msg->curr_state,
> fbe639b44a82755 Sibi Sankar 2020-03-12  330             ind_msg->transaction_id);
> fbe639b44a82755 Sibi Sankar 2020-03-12  331
> fbe639b44a82755 Sibi Sankar 2020-03-12  332     ind = kzalloc(sizeof(*ind), GFP_KERNEL);
> fbe639b44a82755 Sibi Sankar 2020-03-12  333     if (!ind)
> fbe639b44a82755 Sibi Sankar 2020-03-12  334             return;
> fbe639b44a82755 Sibi Sankar 2020-03-12  335
> fbe639b44a82755 Sibi Sankar 2020-03-12  336     ind->transaction_id = ind_msg->transaction_id;
> fbe639b44a82755 Sibi Sankar 2020-03-12  337     ind->curr_state = ind_msg->curr_state;
> fbe639b44a82755 Sibi Sankar 2020-03-12  338     ind->pds = pds;
> fbe639b44a82755 Sibi Sankar 2020-03-12  339
> fbe639b44a82755 Sibi Sankar 2020-03-12  340     mutex_lock(&pdr->list_lock);
> fbe639b44a82755 Sibi Sankar 2020-03-12  341     list_add_tail(&ind->node, &pdr->indack_list);
> fbe639b44a82755 Sibi Sankar 2020-03-12  342     mutex_unlock(&pdr->list_lock);
> fbe639b44a82755 Sibi Sankar 2020-03-12  343
> fbe639b44a82755 Sibi Sankar 2020-03-12  344     queue_work(pdr->indack_wq, &pdr->indack_work);
> fbe639b44a82755 Sibi Sankar 2020-03-12  345  }
> fbe639b44a82755 Sibi Sankar 2020-03-12  346
>
> :::::: The code at line 316 was first introduced by commit
> :::::: fbe639b44a82755d639df1c5d147c93f02ac5a0f soc: qcom: Introduce Protection Domain Restart helpers
>
> :::::: TO: Sibi Sankar <sibis@codeaurora.org>
> :::::: CC: Bjorn Andersson <bjorn.andersson@linaro.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003170630.NGJUYTfo%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmOF4LGcZLS8wRdsF3bbp9JvBoGWEO%2B4fj%2Bbzz4zOauZw%40mail.gmail.com.
